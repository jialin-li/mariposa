import sqlite3, os
# from basic_utils import *

def zip_db():
    os.system("cd data && rm chunk.tar.gz.*")
    os.system("cd data && tar cvzf - mariposa.db | split --bytes=50MB - chunk.tar.gz.")

def unzip_db():
    os.system("cd data && mv mariposa.db mariposa.temp.db")
    os.system("cd data && cat chunk.tar.gz.* | tar xzvf -")

def get_cursor(db_path):
    con = sqlite3.connect(db_path)
    cur = con.cursor()
    return con, cur

def conclude(con):
    con.commit()
    con.close()

def table_exists(cur, table_name):
    cur.execute(f"""SELECT name from sqlite_master
        WHERE type='table'
        AND name=?""", (table_name,))
    res = cur.fetchone() != None
    return res

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

def show_tables(db_path):
    tables = get_tables(db_path)
    for table, count in tables.items():
        print(table, count)

def create_exp_table(cur, table_name):
    cur.execute(f"""CREATE TABLE {table_name}(
        query_path TEXT NOT NULL,
        vanilla_path TEXT,
        perturbation varchar(10),
        command TEXT NOT NULL,
        std_out TEXT,
        std_error TEXT,
        result_code INTEGER,
        elapsed_milli INTEGER, 
        check_sat_id INTEGER,
        timestamp DEFAULT CURRENT_TIMESTAMP)""")
    print(f"[INFO] created table {table_name}")

def create_sum_table(cur, table_name):
    cur.execute(f"""CREATE TABLE {table_name} (
        vanilla_path TEXT,
        mutations TEXT,
        summaries BLOB,
        PRIMARY KEY (vanilla_path, mutations))""")
    print(f"[INFO] created table {table_name}")

# def import_entries(cur_db_path, other_db_path, exp, project, solver, part_id, part_num):
#     con, cur = get_cursor(cur_db_path)
    
#     exp_tname = exp.get_exp_tname(project, solver)
#     sum_tname = exp.get_sum_tname(project, solver)

#     if not table_exists(cur, sum_tname):
#         create_summary_table(cur, sum_tname)

#     if not table_exists(cur, exp_tname):
#         create_experiment_table(cur, exp_tname)

#     other_exp_tname = exp.get_exp_tname(project, solver, part_id, part_num)
#     other_sum_tname = exp.get_sum_tname(project, solver, part_id, part_num)

def get_vanilla_paths(cur, exp_table_name):
    res = cur.execute(f"""
        SELECT query_path, result_code, elapsed_milli
        FROM {exp_table_name}
        WHERE perturbation IS NULL""")
    vanilla_rows = res.fetchall()
    return vanilla_rows

def get_mutant_rows(cur, exp_table_name, v_path, mutation):
    res = cur.execute(f"""
        SELECT result_code, elapsed_milli, perturbation FROM {exp_table_name}
        WHERE vanilla_path = ?
        AND perturbation = ?""", (v_path, mutation))
    return res.fetchall()

# def export_timeouts(cfg, solver):
#     con, cur = get_cursor(cfg.qcfg.db_path)
#     solver_table = cfg.qcfg.get_solver_table_name(solver)

#     if not table_exists(cur, solver_table):
#         print(f"[WARN] export timeout: {solver_table} does not exist!")
#         con.close()
#         return
#     clean_dir = cfg.qcfg.project.clean_dirs[solver]
#     assert clean_dir.endswith("/")
#     target_dir = clean_dir[:-1] + "_"+ str(solver) + "_ext/"

#     res = cur.execute(f"""
#         SELECT vanilla_path, perturbation, command FROM {solver_table}
#         WHERE result_code = "timeout" """)

#     rows = res.fetchall()
#     # print(len(rows))

#     for row in rows:
#         vanilla_path = row[0]
#         perturb = row[1]
#         assert vanilla_path.endswith(".smt2")
#         assert vanilla_path.startswith(clean_dir)
#         stemed = vanilla_path[len(clean_dir):-5]
#         command = row[2]
#         [solver_path, mut_path, limit] = command.split(" ")
#         index = mut_path.index(stemed) + len(stemed)
#         info = mut_path[index:].split(".")
#         # print(vanilla_path)
#         if perturb is None:
#             command = f"cp {vanilla_path} {target_dir}"
#         else:
#             seed = int(info[1])
#             assert perturb == info[2]
#             file_name = f"{str(seed)}.{perturb}.smt2"
#             mutant_path = target_dir + stemed + "." + file_name
#             command = f"./target/release/mariposa -i {vanilla_path} -p {perturb} -o {mutant_path} -s {seed}"
#         print(command)
#     con.close()

# def drop_query(db_path, exp_tname, sum_tname, query_path):
#     con, cur = get_cursor(db_path)
#     exp_exists = table_exists(cur, exp_tname)
#     sum_exists = table_exists(cur, sum_tname)

#     # check if table exists in the database
#     exit_with_on_fail(exp_exists and sum_exists, f"[ERROR] table {exp_tname} or {sum_tname} does not exist")

#     # check if the query is already in the table
#     cur.execute(f"SELECT * FROM {exp_tname} WHERE vanilla_path = '{query_path}'")
#     rows0 = cur.fetchall()

#     if len(rows0) > 0:
#         print(f"[INFO] query {query_path} already in the table, remove it? [Y]")
#         exit_with_on_fail(input() == "Y", f"[INFO] aborting")
#         cur.execute(f"DELETE FROM {exp_tname} WHERE vanilla_path = '{query_path}'")

#     cur.execute(f"SELECT * FROM {sum_tname} WHERE vanilla_path = '{query_path}'")
#     rows1 = cur.fetchall()

#     if len(rows1) > 0:
#         print(f"[INFO] query {query_path} already in the summary table, remove it? [Y]")
#         exit_with_on_fail(input() == "Y", f"[INFO] aborting")
#         cur.execute(f"DELETE FROM {sum_tname} WHERE vanilla_path = '{query_path}'")

#     con.commit()
#     con.close()

# def load_sum_table(project, solver, skip=set()):
#     con, cur = get_cursor(cfg.db_path)
#     sum_name = cfg.get_sum_tname(project, solver)
#     # print(f"[INFO] loading {sum_name}")

#     if not table_exists(cur, sum_name):
#         print(f"[INFO] skipping {sum_name}")
#         return None

#     solver = str(solver)

#     res = cur.execute(f"""SELECT * FROM {sum_name}""")
#     rows = res.fetchall()

#     nrows = []
#     mut_size = cfg.num_mutant
#     for row in rows:
#         if row[0] in skip:
#             continue
#         mutations = ast.literal_eval(row[1])
#         blob = np.frombuffer(row[2], dtype=int)
#         blob = blob.reshape((len(mutations), 2, mut_size + 1))
#         nrow = [row[0], mutations, blob]
#         nrows.append(nrow)

#     con.close()
#     return nrows

if __name__ == "__main__":
    # import_tables()
    # tables = get_tables("./data/mariposa.db")
    # con, cur = get_cursor("./data/mariposa.db")
    
    # for table in tables:
    #     old_table = table
    #     table = table.lower()
    #     if table.endswith("_summary"):
    #         # main_d_komodo_z3_4_5_0_sum
    #         table = "main_" + table.replace("_summary", "_sum")
    #         rename_table(cur, old_table, table)
    #     else:
    #         table = "main_" + table + "_exp"
    #         rename_table(cur, old_table, table)
    # con.commit()
    # con.close()

    # if len(sys.argv) <= 1:
    #     show_tables()
    pass
