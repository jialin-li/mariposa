from configs.projects import *
from configs.experiments import *
from runner import Runner, subprocess_run
from db_utils import *
from analyzer import *

S_KOMODO = ProjectConfig("s_komodo", FrameworkName.SERVAL, Z3_4_4_2)
S_KOMODO.assign_z3_dirs("data/s_komodo_clean/")
S_KOMODO.assign_cvc5_dirs("data/s_komodo_clean/")

D_KOMODO = ProjectConfig("d_komodo", FrameworkName.DAFNY, Z3_4_5_0)
# D_KOMODO.assign_cvc5_dirs("data/d_komodo_cvc5_clean/")

D_FVBKV = ProjectConfig("d_fvbkv", FrameworkName.DAFNY, Z3_4_6_0)
D_LVBKV = ProjectConfig("d_lvbkv", FrameworkName.DAFNY, Z3_4_8_5)

FS_VWASM = ProjectConfig("fs_vwasm", FrameworkName.FSTAR, Z3_4_8_5)
FS_VWASM.assign_cvc5_dirs("data/fs_vwasm_cvc5_clean/")

FS_DICE = ProjectConfig("fs_dice", FrameworkName.FSTAR, Z3_4_8_5)

Z3_SOLVERS = [Z3_4_4_2, Z3_4_5_0, Z3_4_6_0, Z3_4_8_5, Z3_4_8_17, Z3_4_11_2]

S_KOMODO_CFG = ExpConfig("S_KOMODO", S_KOMODO, ALL_SOLVERS)
D_KOMODO_CFG = ExpConfig("D_KOMODO", D_KOMODO, Z3_SOLVERS)
D_LVBKV_CFG = ExpConfig("D_LVBKV", D_LVBKV, Z3_SOLVERS)
D_FVBKV_CFG = ExpConfig("D_FVBKV", D_FVBKV, Z3_SOLVERS)
FS_DICE_CFG = ExpConfig("FS_DICE", FS_DICE, Z3_SOLVERS)
FS_VWASM_CFG = ExpConfig("FS_VWASM", FS_VWASM, ALL_SOLVERS)

ALL_CFGS = [S_KOMODO_CFG, D_KOMODO_CFG, D_LVBKV_CFG, D_FVBKV_CFG, FS_DICE_CFG, FS_VWASM_CFG]

def analyze_results(cfg):
    # build_summary_table(cfg)
    summaries = load_summary(cfg, 40)
    plot_basic(cfg, summaries)
    # print(intervals)
    plot_time_stable(cfg, summaries)
    plot_time_mixed(cfg, summaries)

    # print_summary_data(cfgs)
    # plot_query_sizes(cfgs)

def import_database():
    tables = [
        "D_KOMODO_z3_4_11_2"]

    import_tables("data/mariposa2.db", tables)

def clean_queries(cfg):
    from clean_utils import clean_dfy_project
    from clean_utils import clean_fs_project
    clean_dfy_project(cfg, cfg.clean_dirs[Z3_4_11_2])

def send_project_queries(project, dst):
    pass

def sample_projects(projects):
    for proj in projects:
        print(proj)

if __name__ == '__main__':
    print("building mariposa...")
    stdout, _, _ = subprocess_run("git rev-parse --abbrev-ref HEAD", 0)
    assert stdout == "master"
    os.system("cargo build --release")

    print("checking scaling_governor...")
    stdout, _, _ = subprocess_run("cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor | uniq", 0)
    assert stdout == "performance"

    # import_database()
    # analyze_results(D_FVBKV_CFG)
    # build_summary_table(FS_DICE_CFG)

    # cfg = ExpConfig("FS_DICE", FS_VWASM, [Z3_4_8_17])
    # cfg = ExpConfig("FS_VWASM", FS_VWASM, [Z3_4_8_17])
    # r = Runner(cfg, True)
    # append_summary_table(cfg, Z3_4_8_17)

    # build_summary_table(cfg)
    # analyze_results(cfg)

    # cfg = ExpConfig("D_KOMODO", D_KOMODO, [Z3_4_11_2])
    # summaries = load_summary(cfg, 40)
    # get_categories(summaries)

    # # q = "data/d_komodo_z3_clean/verified-verify.gen.dfyImpl___module.__default.va__lemma__compare__memory__to__regs.smt2"
    # q = "data/d_komodo_z3_clean/verified-secprop-sec_prop_util.i.dfyImpl___module.__default.lemma__allocatePageRefs.smt2"

    # con, cur = get_cursor()
    # cur.execute("select result_code, elapsed_milli from D_KOMODO_z3_4_11_2 where vanilla_path = ?", (q, ))
    # for r in cur.fetchall():
    #     print(r)

    cfgs = [S_KOMODO_CFG, D_KOMODO_CFG, D_LVBKV_CFG, D_FVBKV_CFG, FS_VWASM_CFG, FS_DICE_CFG]
    dump_all(cfgs, timeout_threshold=40, time_std_threshold=3)

    # con, cur = get_cursor()
    # cur.execute(f"select * from {cfg.qcfg.get_solver_table_name(Z3_4_8_5)}")
    # for row in cur.fetchall():
    #     print(row)
    # clean_queries()


