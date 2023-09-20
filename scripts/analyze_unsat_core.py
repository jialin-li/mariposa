from basic_utils import *
from db_utils import *
from vbkv_filemap import *
from cache_utils import *

from plot_utils import *
from configer import Configer

c = Configer()

def stem_file_paths(items):
    new_items = {}
    for cat in Stability:
        new_items[cat] = set()
        for query in items[cat]:
            new_items[cat].add(query.split("/")[-1])
    return new_items

Z3_4_12_2 = c.load_known_solver("z3_4_12_2")
ANA = Analyzer(.05, 60, .05, .95, 0.8, "cutoff")

def load(proj, exp):
    rows = load_sum_table(proj, Z3_4_12_2, exp)
    if rows is None:
        return None, None, None
    items = ANA.categorize_queries(rows, tally=True)
    items = stem_file_paths(items)

    if proj.name == "d_fvbkv":
        for item in items:
            keep = set()
            for k in items[item]:
                for a in DF_FILES:
                    if k.startswith(a):
                        keep.add(k)
                        break
            items[item] = keep

    tally = items.pop(Stability.TALLY)
    ps, _ = get_category_percentages(items)
    return items, ps, tally

def print_compare_table(items0, ps0, items1, ps1):
    table = [["category", "original", "minimized"]]
    for cat in items0:
        r0 = round(ps0[cat], 2)
        r1 = round(ps1[cat], 2)
        if r0 == 0 and r1 == 0:
            continue
        table.append([cat, f"{len(items0[cat])} ({r0})", f"{len(items1[cat])} ({r1})"])
    print(tabulate(table, headers="firstrow", tablefmt="github"))

def hacky_convert_file_path(path):
    return path.replace("dfyxxx", "dfy.").replace("1.smt2", "smt2")

def get_basic_keep(orgi_name, mini_name):
    c = Configer()
    UC = c.load_known_experiment("min_asserts")
    OP = c.load_known_experiment("opaque")
    orgi = c.load_known_project(orgi_name)
    mini = c.load_known_project(mini_name)

    exp = OP if orgi_name == "d_lvbkv_closed" else UC
    items0, ps0, tally0 = load(orgi, exp)
    items1, ps1, tally1 = load(mini, UC)

    if orgi_name == "d_lvbkv_closed":
        for k, v in items0.items():
            items0[k] = set([hacky_convert_file_path(x) for x in v])
            tally0 = set([hacky_convert_file_path(x) for x in tally0])

    keep = set()
    # print(len(tally1 - tally0))

    for query in tally0:
        if query in items0[Stability.UNSOLVABLE]:
            continue
        if query not in tally1:
            continue
        if query in items1[Stability.UNSOLVABLE]:
            continue
        keep.add(query)

    for cat in [Stability.STABLE, Stability.UNSTABLE, Stability.UNSOLVABLE]:
        items0[cat] = items0[cat] & keep
        items1[cat] = items1[cat] & keep

    keeps = dict()
    for query in keep:
        orgi_path = orgi.clean_dir + "/" + query
        if not os.path.exists(orgi_path):
            orgi_path = orgi_path.replace("dfy.", "dfyxxx")
        if not os.path.exists(orgi_path):
            orgi_path = orgi_path.replace(".smt2", ".1.smt2")
        mini_path = mini.clean_dir + "/" + query
        # print(orgi_path, mini_path)
        keeps[query] = (orgi_path, mini_path)

    return items0, items1, keeps

PAIRS = {
    "d_komodo": "d_komodo_uc",
    "d_fvbkv": "d_fvbkv_uc",
    "d_lvbkv_closed": "d_lvbkv_uc",
    "fs_dice": "fs_dice_uc",
    "fs_vwasm": "fs_vwasm_uc",
}

def plot_instability_reduction():
    fig, ax = plt.subplots()
    x = 0

    # pts = np.zeros((len(PAIRS), 4))
    # for i, origi in enumerate(PAIRS):
    #     mini = PAIRS[origi]
    #     items0, items1, keep = get_basic_keep(origi, mini)
    #     ps0, _ = get_category_percentages(items0)
    #     ps1, _ = get_category_percentages(items1)
    #     pts[i] = ps0[Stability.UNSTABLE], len(items0[Stability.UNSTABLE]), ps1[Stability.UNSTABLE], len(items1[Stability.UNSTABLE])
    # print(pts.tolist())

    pts = [[5.583756345177665, 110.0, 1.6751269035532994, 33.0], [3.187721369539551, 162.0, 1.338055883510429, 68.0], [3.920031360250882, 200.0, 1.1760094080752646, 60.0], [1.0980966325036603, 15.0, 0.36603221083455345, 5.0], [0.06134969325153374, 1.0, 0.18404907975460122, 3.0]]

    ticks = []

    for i, k in enumerate(PAIRS.keys()):    
        plt.bar(x, height=pts[i][0], label="original")
        plt.text(x, pts[i][0], f"{int(pts[i][1])}")
        ticks.append(x + 0.5)
        plt.bar(x+1, height=pts[i][2], label="reduced")
        plt.text(x+1, pts[i][2], f"{int(pts[i][3])}")
        x += 4

    plt.title("Unsat Core Instability Difference")
    plt.xticks(ticks, PAIRS.keys())
    plt.ylabel("percentage of unstable queries")
    plt.savefig("fig/context/instability_diff.png", dpi=200)
    plt.close()

def get_quanti_stats(query_path):
    fcount = 0
    ecount = 0
    qf = 0
    nqf = 0
    others = 0

    for line in open(query_path).readlines():
        quanti = False
        if not line.startswith("(assert"):
            others += 1
            continue
        cfc = line.count("(forall")
        if cfc > 0:
            quanti = True
            fcount += cfc
        
        cec = line.count("(exists")
        
        if cec > 0:        
            quanti = True
            ecount += cec

        if not quanti:
            qf += 1
        else:
            nqf += 1
    return fcount, ecount, qf, nqf, others

def load_quanti_keep_stats(orgi_name):
    if os.path.exists(f"cache/{orgi_name}_keep_quanti.pkl"):
        pts = cache_load(f"{orgi_name}_keep_quanti.pkl")
    else:
        mini_name = PAIRS[orgi_name]
        items0, items1, keep = get_basic_keep(orgi_name, mini_name)
        pts = np.zeros((len(keep), 10))
        for i, q in enumerate(tqdm(keep)):
            pts[i] = get_quanti_stats(keep[q][0]) \
                + get_quanti_stats(keep[q][1])
        cache_save(pts, f"{orgi_name}_keep_quanti.pkl")
    return pts

def get_assert_size(query_path):
    size = 0
    for line in open(query_path).readlines():
        if line.startswith("(assert"):
            size += len(line)
    return size

def plot_context_reduction():
    fig, ax = plt.subplots()

    for orgi_name in PAIRS.keys():
        pts = load_quanti_keep_stats(orgi_name)
        # print((pts[:, 2] + pts[:, 3]) * 100 / (pts[:, 7] + pts[:, 8]))
        xs, ys = get_cdf_pts((pts[:, 7] + pts[:, 8]) * 100 / (pts[:, 2] + pts[:, 3]) )
        plt.plot(xs, ys, marker=",", label=orgi_name, linewidth=2)

    plt.ylabel("cumulative percentage of queries")
    plt.xlabel("percentage of assertions retained in unsat core (log scale)")
    plt.title("Unsat Core Context Retention")
    plt.legend()
    plt.xscale("log")
    plt.xlim(0.001, 100)
    plt.ylim(0)
    plt.xticks([0.001, 0.01, 0.1, 1.0, 10, 100], ["0.001%", "0.01%", "0.1%", "1%", "10%", "100%"])
    plt.savefig("fig/context/context_retention.png", dpi=200)
    plt.close()

    fig, ax = plt.subplots()

    for k in PAIRS.keys():
        if os.path.exists(f"cache/{k}_assert_size.pkl"):
            pts = cache_load(f"{k}_assert_size.pkl")
        else:
            items0, items1, keep = get_basic_keep(k, PAIRS[k])
            pts = np.zeros((len(keep),), dtype=np.float64)
            for i, q in enumerate(tqdm(keep)):
                orgi_path, mini_path = keep[q]
                fs0 = get_assert_size(orgi_path)
                fs1 = get_assert_size(mini_path)
                pts[i] = fs1 / fs0
            cache_save(pts, f"{k}_assert_size.pkl")            
        xs, ys = get_cdf_pts(pts * 100)
        plt.plot(xs, ys, marker=",", label=k, linewidth=2)

    plt.ylabel("cumulative percentage of queries")
    plt.xlabel("percentage of assert bytes retained in unsat core (log scale)")
    plt.legend()
    plt.title("Unsat Core Size Retention")
    plt.ylim(0)
    plt.xscale("log")
    plt.xlim(0.001, 100)
    plt.xticks([0.001, 0.01, 0.1, 1.0, 10, 100], ["0.001%", "0.01%", "0.1%", "1%", "10%", "100%"])
    # ax.xaxis.set_major_formatter(mtick.PercentFormatter(xmax=1.0, decimals=3))
    plt.savefig("fig/context/size_retention.png", dpi=200)
    plt.close()

# def print_basics(orgi_name, mini_name):
#     UC = c.load_known_experiment("min_asserts")
#     items0, items1, keep = get_basic_keep(orgi_name, mini_name)
#     print("")

#     print_compare_table(items0, ps0, items1, ps1)

#     if orgi_name == "d_lvbkv_closed":
#         p = "d_lvbkv_"
#     elif orgi_name == "d_fvbkv":
#         p = "d_fvbkv_"
#     elif orgi_name == "d_komodo":
#         p = "d_komodo_uc_"

#     table = {Stability.STABLE: [], Stability.UNSTABLE: [], Stability.UNSOLVABLE: []}
#     for label in NON_GOAL_LABELS:
#         pname = p + label
#         proj = c.load_known_project(pname)
#         items, ps, tally = load(proj, UC)
#         if items is None:
#             for k in table.keys():
#                 table[k].append("-")
#             continue
#         for k in table.keys():
#             table[k].append(len(items[k] & keep))

#     table_ = [["category"] + NON_GOAL_LABELS]
#     for k in table.keys():
#         table_.append([k] + table[k])
#     print(tabulate(table_, headers="firstrow", tablefmt="github"))

# def migration(items1, items2, cats):
#     row = [""]

#     for c2 in cats:
#        row.append(f"{c2.name}({len(items2[c2])})") 
    
#     rows = [row]
    
#     for c1 in cats:
#         row = [f"{c1.name}({len(items1[c1])})"]
#         for c2 in cats:
#             row.append(len(items1[c1].intersection(items2[c2])))
#         rows.append(row)
#     print(tabulate(rows, headers="firstrow", tablefmt="github"))

# def unsat_core_migration():
#     cats = [Stability.UNSTABLE, Stability.UNSOLVABLE, Stability.STABLE, Stability.TALLY]

#     uk = get_unknowns(D_KOMODO)
#     rows = load_sum_table(D_KOMODO, Z3_4_12_1, MAIN_EXP, uk)
#     items = Z_TEST_60.categorize_queries(rows, tally=True)
#     items = stem_file_paths(items)
#     ps, total = get_category_percentages(items)

#     D_KOMODO_UC = c.load_known_project("d_komodo_uc")
#     exp = c.load_known_experiment("unsat_core")
#     uk = get_unknowns(D_KOMODO_UC, exp)
#     rows = load_sum_table(D_KOMODO_UC, Z3_4_12_1, exp, uk)
#     items2 = Z_TEST_60.categorize_queries(rows, tally=True)

#     items2 = stem_file_paths(items2)
#     ps, total = get_category_percentages(items2)
    
#     migration(items, items2, cats)

# def compose_migration():
#     cats = [Stability.UNSTABLE, Stability.UNSOLVABLE, Stability.STABLE, Stability.INCONCLUSIVE]
#     proj = D_KOMODO

#     # uk = get_unknowns(proj)
#     uk = set()
#     rows = load_sum_table(proj, Z3_4_12_1, MAIN_EXP, uk)
#     items = Z_TEST_60.categorize_queries(rows)
#     ps, total = get_category_percentages(items)

#     pp_table = [["category", "count", "percentage"]]
#     for cat in [Stability.UNSOLVABLE, Stability.UNSTABLE, Stability.INCONCLUSIVE, Stability.STABLE]:
#         pp_table.append([cat.value, len(items[cat]), round(ps[cat], 2)])
#     print(tabulate(pp_table, tablefmt="github"))

#     nrows = dict()
    
#     for e in ["compose", "compose2", "compose3"]:
#         exp = c.load_known_experiment(e)
#         rows = load_sum_table(proj, Z3_4_12_1, exp, uk)
#         for row in rows:
#             if row[0] not in nrows:
#                 nrows[row[0]] = []
#             nrows[row[0]].append(row)
#     nnrows = []

#     for k in nrows:
#         blob = np.hstack([v[2][0] for v in nrows[k]])
#         blob = np.expand_dims(blob, axis=0)
#         nnrows.append([k, ["all"], blob])
#     items2 = Z_TEST_60.categorize_queries(nnrows)
#     ps, total = get_category_percentages(items2)

#     pp_table = [["category", "count", "percentage"]]
#     for cat in [Stability.UNSOLVABLE, Stability.UNSTABLE, Stability.INCONCLUSIVE, Stability.STABLE]:
#         pp_table.append([cat.value, len(items2[cat]), round(ps[cat], 2)])
#     print(tabulate(pp_table, tablefmt="github"))
#     migration(items2, items, cats)

if __name__ == "__main__":
    plot_context_reduction()
    plot_instability_reduction()