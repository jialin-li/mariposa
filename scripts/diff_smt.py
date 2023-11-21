import sys
from basic_utils import *
import hashlib
import numpy as np
import re

def normalize_line(line):
    return line.replace(" ", "").strip()

def get_asserts(filename):
    cmds0 = dict()
    if filename is None:
        return cmds0
    with open(filename) as f:
        for line in f.readlines():
            if line.startswith("(assert "):
                cmds0[normalize_line(line)] = line.strip()
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
        assert False

def get_assert_count(filename):
    output = subprocess_run(r'rg -e "\(assert" -c' + " " + filename)[0]
    if output == "":
        return np.inf
    return int(output)

def print_diff_stats(path1, path2):
    # count1 = get_assert_count(path1)
    # count2 = get_assert_count(path2)
    # print(count1, count2)
    lines1 = set(open(path1).readlines())
    lines2 = set(open(path2).readlines())
    for i in lines1 - lines2:
        print(i, end="")

s_expr_start = re.compile(r"^\(([^ ]+) ")

def load_tf(tf_file):
    tf = dict()
    with open(tf_file) as f:
        for line in f.readlines():
            line = line.strip().split(" ")
            tf[line[0]] = int(line[1])
    return tf

def tokenize(line, tf):
    line = re.split('\(|\)| ', line.strip())
    line = {i: tf[i] for i in line if i in tf}
    return line

def parse_stamps(filename):
    cmds0 = dict()
    for line in open(filename):
        line = line.strip().split("|||")
        stamp = int(line[0])
        nl = normalize_line(line[1])
        if nl.startswith("(assert"):
            cmds0[nl] = stamp
    return cmds0

def print_shake_layers(orig_path, mini_path, log_path, tf_file):
    tf = load_tf(tf_file)
    covered = set()

    orig = get_asserts(orig_path)
    m_asserts = get_asserts(mini_path)
    mini = key_set(m_asserts)
    stamps = parse_stamps(log_path)

    assert mini.issubset(key_set(orig))
    assert key_set(stamps).issubset(key_set(orig))

    max_core_depth = 0
    approx = 0 

    symbol_depth = dict()
    layers = dict()

    for (nl, depth) in stamps.items():
        if depth not in layers:
            layers[depth] = set()
        layers[depth].add(nl) 
        covered.add(nl)

    for depth in sorted(layers):
        layer = layers[depth]
        print(f"=== layer {depth} ===")
        layer_core = mini & layer
        if len(layer_core) != 0:
            max_core_depth = depth
        if depth <= max_core_depth:
            approx += len(layer)
        for l in layer:
            tokens = tokenize(orig[l], tf)
            for t in tokens:
                if t not in symbol_depth:
                    symbol_depth[t] = depth
 
            # if l in layer_core:
            #     print(f"[core] ", end="")
            # print(orig[l])
            # for t in tokens:
            #     print(f"\t{t}:{tokens[t]}")
            # print()
 
        print(f"\tcore asserts: {len(layer_core)}/{len(layer)}")

    # core_symbols = dict()
    # for l in m_asserts.values():
    #     tokens = tokenize(l, tf)
    #     for t in tokens:
    #         if t in symbol_depth:
    #             core_symbols[t] = symbol_depth[t]

    # for t in sorted(core_symbols, key=lambda x: symbol_depth[x]):
    #     print(f"{t}:{core_symbols[t]}")

    print(f"=== summary ===")
    print(f"\ttotal asserts: {len(orig)}")
    print(f"\tapprox asserts: {approx}")
    print(f"\tcore asserts: {len(mini)}")
    print(f"\tmax core depth: {max_core_depth}")
    missing = mini - covered
    print(f"\tmissing core asserts: {len(missing)}")

    print("=== missing ===")
    for i in missing:
        print(orig[i])


def shake_from_log(orig_path, log_path, out_path, max_depth):
    stamps = parse_stamps(log_path)
    assert(len(stamps) != 0)
    orig = get_asserts(orig_path)
    assert key_set(stamps).issubset(key_set(orig))

    # stats = self.get_shake_stats()
    out_file = open(out_path, "w+")

    for line in open(orig_path):
        if line.startswith("(assert "):
            nl = normalize_line(line)
            if nl not in stamps or stamps[nl] > max_depth:
                continue
        out_file.write(line)
    out_file.close()

def key_set(d):
    return set(d.keys())

def value_set(d):
    return set(d.values())

if __name__ == "__main__":
    op = sys.argv[1]
    if op == "subset-check":
        check_assert_subset(sys.argv[2], sys.argv[3])
    elif op == "diff-stats":
        print_diff_stats(sys.argv[2], sys.argv[3])
    elif op == "shake-layers":
        print_shake_layers(sys.argv[2], sys.argv[3], sys.argv[4], sys.argv[5])
    elif op == "shake-from-log":
        shake_from_log(sys.argv[2], sys.argv[3], sys.argv[4], int(sys.argv[5]))
