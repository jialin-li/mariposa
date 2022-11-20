from path_utils import *
import random

SMT_PLAIN_QLIST_PATH = "data/qlists/smtlib_all_plain_status.csv"
SMT_EXLUDE_QLIST_PATH = "data/qlists/smtlib_exclude"

def dump_smtlib_plain_status():
    file_paths = list_smt2_files(SMT_ALL_DIR)
    with open(SMT_PLAIN_QLIST_PATH) as out:
        for file_path in file_paths:
            with open(file_path) as f:
                query = f.read()
                if "(set-info :status unsat)" in query:
                    out.write(file_path + ",unsat")
                elif "(set-info :status sat)" in query:
                    out.write(file_path + ",sat")
                else:
                    out.write(file_path + ",unknown")

def load_smlib_exclude_qlist():
    excludes = set()
    with open(SMT_EXLUDE_QLIST_PATH) as f:
        for line in f.readlines():
            line = line.strip()
            excludes.add(line)
    return excludes

excludes = load_smlib_exclude_qlist()

def load_smtlib_qlist(status):
    filtered = []
    with open(SMT_PLAIN_QLIST_PATH) as f:
        for line in f.readlines():
            line = line.strip().split(",")
            assert(len(line) == 2)
            if line[1] == status and line[0] not in excludes:
                filtered.append(line[0])
    return filtered

def load_random_smtlib_sat_qlist(count):
    file_paths = load_smtlib_qlist("sat")
    randlist = random.sample(file_paths, k=count)
    return randlist

def analyze_model_test():
    mdlt_count = 0
    mdltr_count = 0

    missing = 0
    failing = 0

    with open("data/qlists/smtlib_rand1K_sat") as f:
        for file_path in f.readlines():
            file_path = file_path.strip()
            mdlt_path = to_model_test_path(file_path)

            if not os.path.exists(mdlt_path):
                continue
            if open(mdlt_path).read() == "":
                print(mdlt_path)
                continue

            mdlt_count += 1
            mdltr_path = to_model_test_res_path(file_path)

            if not os.path.exists(mdltr_path):
                missing += 1
                continue
            if open(mdltr_path).read() == "sat":
                mdltr_count += 1
            else:
                failing += 1
    print(f"tests generated: {mdlt_count}")
    print(f" passing: {mdltr_count}")
    print(f" missing: {missing} (timeout)")
    print(f" failing: {failing}")

# analyze_model_test()
# load_random_smtlib_sat_qlist(1000)
# for f in load_random_smtlib_sat_qlist(1000):
#     print(f)
# def main():
#     # dump_smtlib_plain_status()

if __name__ == "__main__":
    analyze_model_test()
