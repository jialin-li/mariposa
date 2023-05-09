import sqlite3
import sys, os
from tqdm import tqdm
from configs.experiments import DB_PATH
import numpy as np
from rcode import RCode
from classifier import *
import ast

def zip_db():
    os.system("cd data && rm chunk.tar.gz.*")
    os.system("cd data && tar cvzf - mariposa.db | split --bytes=50MB - chunk.tar.gz.")

def unzip_db():
    os.system("cd data && mv mariposa.db mariposa.temp.db")
    os.system("cd data && cat chunk.tar.gz.* | tar xzvf -")

def check_table_exists(cur, table_name):
    cur.execute(f"""SELECT name from sqlite_master
        WHERE type='table'
        AND name=?""", (table_name,))
    res = cur.fetchone() != None
    return res

def get_connection(db_path=DB_PATH):
    return sqlite3.connect(db_path)

def get_cursor(db_path=DB_PATH):
    con = sqlite3.connect(db_path)
    cur = con.cursor()
    return con, cur

def confirm_drop_table(cur, table_name):
    if check_table_exists(cur, table_name):
        print(f"confirm to drop existing experiment table {table_name} [Y]")
        if input() != "Y":
            print(f"[WARN] abort dropping table {table_name}")
            return False
        cur.execute(f"""DROP TABLE {table_name}""")
        print(f"[INFO] dropped existing table {table_name}")
        return True
    print(f"[INFO] ignored non-existing table {table_name}")
    return True

def rename_table(cur, old_name, new_name):
    q = f"""ALTER TABLE {old_name} RENAME TO {new_name}"""
    print(q)
    cur.execute(q)

def get_tables(db_path):
    con = sqlite3.connect(db_path)
    cur = con.cursor()
    res = cur.execute("""SELECT name FROM sqlite_master
        WHERE type='table'
        ORDER BY name ASC""")
    tables = dict()
    tns = res.fetchall()
    for r in tns:
        res = cur.execute(f"""SELECT COUNT(*) FROM {r[0]}""")
        tables[r[0]] = res.fetchone()[0]
    con.close()
    return tables

def show_tables(db_path=DB_PATH):
    tables = get_tables(db_path)
    for table, count in tables.items():
        print(table, count)

def create_experiment_table(cur, table_name):
    cur.execute(f"""CREATE TABLE {table_name}(
        query_path TEXT NOT NULL,
        vanilla_path TEXT,
        perturbation varchar(10),
        command TEXT NOT NULL,
        std_out TEXT,
        std_error TEXT,
        result_code varchar(10),
        elapsed_milli INTEGER, 
        timestamp DEFAULT CURRENT_TIMESTAMP
        )""")
    print(f"[INFO] created new table {table_name}")

def import_tables(other_db_path):
    ts0 = get_tables(DB_PATH)
    ts1 = get_tables(other_db_path)
    tn0 = set(ts0.keys())
    tn1 = set(ts1.keys())
    for t in tn0.intersection(tn1):
        if ts0[t] != ts1[t]:
            print(f"[WARN] table row count mismatch {t} {ts0[t]} vs {ts1[t]}")

    con, cur = get_cursor()
    cur.execute(f'ATTACH "{other_db_path}" as OTHER_DB;')

    for table_name in tn1 - tn0:
        print(f"confirm importing table {table_name} [Y]")
        if input() != "Y":
            print(f"[INFO] skip importing table {table_name}")
        else:
            create_experiment_table(cur, table_name)
            cur.execute(f"INSERT INTO {table_name} SELECT * FROM OTHER_DB.{table_name}")
            print(f"[INFO] done importing table {table_name}")
    con.commit()
    con.close()

def build_solver_summary_table(cfg, solver):
    con, cur = get_cursor(cfg.qcfg.db_path)
    solver_table = cfg.qcfg.get_solver_table_name(solver)
    summary_table = cfg.get_solver_summary_table_name(solver)

    if not check_table_exists(cur, solver_table):
        print(f"[WARN] table {solver_table} does not exist")
        con.close()
        return

    cur.execute(f"""DROP TABLE IF EXISTS {summary_table}""")

    cur.execute(f"""CREATE TABLE {summary_table} (
        vanilla_path TEXT,
        pretubrations TEXT,
        summaries BLOB)""")

    res = cur.execute(f"""
        SELECT DISTINCT(query_path), result_code, elapsed_milli
        FROM {solver_table}
        WHERE query_path = vanilla_path""")

    vanilla_rows = res.fetchall()
    for (vanilla_path, v_rcode, v_time) in tqdm(vanilla_rows):
        res = cur.execute(f"""
            SELECT result_code, elapsed_milli, perturbation FROM {solver_table}
            WHERE vanilla_path = "{vanilla_path}"
            AND perturbation IS NOT NULL""")

        perturbs = [str(p) for p in cfg.qcfg.enabled_muts]
        v_rcode = RCode.from_str(v_rcode).value
        results = {p: [[v_rcode], [v_time]] for p in perturbs}

        for row in res.fetchall():
            results[row[2]][0].append(RCode.from_str(row[0]).value)
            results[row[2]][1].append(row[1])

        mut_size = cfg.qcfg.max_mutants
        blob = np.zeros((len(perturbs), 2, mut_size + 1), dtype=int)
        for pi, perturb in enumerate(perturbs):
            (veri_res, veri_times) = results[perturb]
            blob[pi][0] = veri_res
            blob[pi][1] = veri_times

        cur.execute(f"""INSERT INTO {summary_table}
            VALUES(?, ?, ?);""", 
            (vanilla_path, str(perturbs), blob))

    con.commit()
    con.close()

def export_timeouts(cfg, solver):
    con, cur = get_cursor(cfg.qcfg.db_path)
    solver_table = cfg.qcfg.get_solver_table_name(solver)

    if not check_table_exists(cur, solver_table):
        print(f"[WARN] export timeout: {solver_table} does not exist!")
        con.close()
        return
    clean_dir = cfg.qcfg.project.clean_dirs[solver]
    assert clean_dir.endswith("/")
    target_dir = clean_dir[:-1] + "_"+ str(solver) + "_ext/"

    res = cur.execute(f"""
        SELECT vanilla_path, perturbation, command FROM {solver_table}
        WHERE result_code = "timeout" """)

    rows = res.fetchall()
    # print(len(rows))

    for row in rows:
        vanilla_path = row[0]
        perturb = row[1]
        assert vanilla_path.endswith(".smt2")
        assert vanilla_path.startswith(clean_dir)
        stemed = vanilla_path[len(clean_dir):-5]
        command = row[2]
        [solver_path, mut_path, limit] = command.split(" ")
        index = mut_path.index(stemed) + len(stemed)
        info = mut_path[index:].split(".")
        # print(vanilla_path)
        if perturb is None:
            command = f"cp {vanilla_path} {target_dir}"
        else:
            seed = int(info[1])
            assert perturb == info[2]
            file_name = f"{str(seed)}.{perturb}.smt2"
            mutant_path = target_dir + stemed + "." + file_name
            command = f"./target/release/mariposa -i {vanilla_path} -p {perturb} -o {mutant_path} -s {seed}"
        print(command)
    con.close()

def extend_solver_summary_table(cfg, ext_cfg, solver):
    con, cur = get_cursor(cfg.qcfg.db_path)
    solver_table = cfg.qcfg.get_solver_table_name(solver)
    solver_ext_table = ext_cfg.qcfg.get_solver_table_name(solver)
    # summary_table = cfg.get_solver_summary_table_name(solver)

    if not check_table_exists(cur, solver_table):
        con.close()
        return
    
    solver_table = cfg.qcfg.get_solver_table_name(solver)

    res = cur.execute(f"""
        SELECT query_path, result_code, elapsed_milli, command FROM {solver_ext_table} """)

    ext_results = dict()
    rows = res.fetchall()

    for (query_path, rcode, time, command) in tqdm(rows):
        stem = query_path.split("/")[-1]
        ext_results[stem] = (rcode, time, command)
        # print(stem, time, rcode)

    res = cur.execute(f"""
        SELECT query_path, rowid FROM {solver_table}
        WHERE result_code = "timeout" """)

    rows = res.fetchall()

    for (query_path, row_id) in tqdm(rows):
        stem = query_path.split("/")[-1]
        (rcode, time, command) = ext_results[stem]
        cur.execute(f"""UPDATE {solver_table}
            SET result_code = "{rcode}",
            elapsed_milli = {time},
            command = "{command}"
            WHERE rowid = {row_id}""")

    con.commit()
    con.close()

    build_solver_summary_table(cfg, solver)

def load_solver_summary_table(cfg, solver, skip=set()):
    con, cur = get_cursor(cfg.qcfg.db_path)
    new_table_name = cfg.qcfg.get_solver_table_name(solver) + "_summary"
    if not check_table_exists(cur, new_table_name):
        print(f"[INFO] skipping {new_table_name}")
        return None
    solver = str(solver)

    res = cur.execute(f"""SELECT * FROM {new_table_name}""")
    rows = res.fetchall()

    nrows = []
    mut_size = cfg.qcfg.max_mutants
    for row in rows:
        if row[0] in skip:
            continue
        perturbs = ast.literal_eval(row[1])
        blob = np.frombuffer(row[2], dtype=int)
        blob = blob.reshape((len(perturbs), 2, mut_size + 1))
        nrow = [row[0], perturbs, blob]
        nrows.append(nrow)
    con.close()
    return nrows

if __name__ == "__main__":
    # import_tables()
    if len(sys.argv) <= 1:
        show_tables()
    else:
        cmd = sys.argv[1]
        if cmd == "zip_db":
            zip_db()
        elif cmd == "unzip_db":
            unzip_db()
