import sys
from basic_utils import *
import hashlib

def get_asserts(filename):
    cmds0 = dict()
    if filename is None:
        return cmds0
    with open(filename) as f:
        for line in f.readlines():
            if line.startswith("(assert "):
                cmds0[line.replace(" ", "").strip()] = line.strip()
    return cmds0

def get_name_hash(filename):
    return hashlib.sha256(filename.encode()).hexdigest()

def check_assert_subset(orig_path, reduced_path):
    original = get_asserts(orig_path)
    reduced = get_asserts(reduced_path)
    assert len(reduced) != 0
    if not key_set(reduced).issubset(key_set(original)):
        print(len(original), len(reduced))
        for i in key_set(reduced) - key_set(original):
            print(reduced[i])
            break
        assert False

def get_assert_count(filename):
    output = subprocess_run(r'rg -e "\(assert" -c' + " " + filename)[0]
    if output == "":
        return 0
    return int(output)

def key_set(d):
    return set(d.keys())

def value_set(d):
    return set(d.values())

if __name__ == "__main__":
    # a = get_asserts(sys.argv[1])
    # b = get_asserts(sys.argv[2])
    # for i in a.keys() - b.keys():
    #     print(a[i])
    # print(len(a), len(b), len(a.keys() & b.keys()))
    op = sys.argv[1]
    if op == "subset-check":
        check_assert_subset(sys.argv[2], sys.argv[3])
    # else:
    # a = get_asserts(sys.argv[1])
    # b = get_asserts(sys.argv[2])
    # for i in a.keys() - b.keys():
    #     print(a[i])
    # print(len(a), len(b), len(a.keys() & b.keys()))        
