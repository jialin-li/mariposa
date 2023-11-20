import numpy as np
from tqdm import tqdm
from basic_utils import *
from analyzer import *

def stat_shake_incomplete(qms, clear_cache):
    dps = []

    if clear_cache:
        qms = tqdm(qms)

    for qm in qms:
        stats = qm.get_shake_stats(unify=False, clear_cache=clear_cache)
        dps.append(stats)
        # if stats[5] > 0 and stats[5] < np.inf:
        #     print(stats[5])
        #     qm.get_debug_cmds()

    dps = np.array(dps)

    nz = dps[:, 5] > 0
    nf = np.isfinite(dps[:, 5])

    misses = np.sum(np.logical_and(nz, nf))

    total = len(dps)
    cores = sum(nf)

    print("total queries:\t", total)
    print(f"core available:\t{cores} ({rd_percent_str(cores, total)})")
    print(f"shake missed:\t{misses} ({rd_percent_str(misses, total)}/{rd_percent_str(misses, cores)})")

def stat_baseline_unstable(proj):
    for qm in tqdm(proj.qms):
        if qm.orig_status == Stability.UNSTABLE:
            qm.get_debug_cmds()
            print("")
