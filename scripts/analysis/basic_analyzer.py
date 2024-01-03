from typing import Dict
from configure.project import PM, ProjectType as PType
from execute.exp_part import ExpPart
from analysis.categorizer import *
from execute.exp_result import QueryExpResult
from utils.analyze_utils import *
from utils.smt2_utils import *
from utils.cache_utils import *

class ExpAnalyzer:
    def __init__(self, exp: ExpPart, ana, enable_dummy=False):
        assert exp.part.is_whole()
        self._exp = exp
        self.ana = ana

        self.__qrs: Dict[str, QueryExpResult] = exp.load_sum_table(enable_dummy)
        self.__qr_keys = set(self.__qrs.keys())
        self.__cats = ana.categorize_queries(self.__qrs.values())

        self.__assert_counts = None

    def __getattr__(self, item):
        return getattr(self._exp, item)

    def __getitem__(self, base_name):
        return self.__qrs[base_name]

    def __contains__(self, base_name):
        return base_name in self.__qr_keys
        
    def base_names(self):
        return self.__qr_keys

    def get_stability(self, base_name):
        return self.__cats.get_category(base_name)

    def print_plain_status(self):
        for qr in self.__qrs.values():
            qr.print_status()
            print("")

    def get_stability_status(self):
        return self.__cats

    def print_stability_status(self, verbosity=0):
        print(f"stability status for {self.proj.full_name} {self.exp_name}")

        self.__cats.print_status(skip_empty=True)

        if verbosity == 0:
            return

        self.print_detailed_status(verbosity)

    def print_detailed_status(self, verbosity=2):
        for cat, cs in self.__cats.items():
            if verbosity == 1 and cat != Stability.UNSTABLE:
                continue
            if len(cs) == 0:
                print(f"[INFO] no {cat} queries found")
                continue
            print(f"[INFO] listing {cat} queries...")
            for qs in cs:
                print("")
                self[qs].print_status()

    def get_assert_count(self, base_name):
        if self.__assert_counts is None:
            self.__assert_counts = self.proj.get_assert_counts()
        return self.__assert_counts[base_name]

    def get_assert_counts(self):
        if self.__assert_counts is None:
            self.__assert_counts = self.proj.get_assert_counts()
        data = np.array([c for c in self.__assert_counts.values()])
        return data
    
    def get_veri_times(self):
        data = []
        for qr in self.__qrs.values():
            data.append(qr.get_original_status()[1])
        return np.array(data) / 1000

class GroupAnalyzer:
    def __init__(self, group_name, ana):
        self.ana = ana
        self.group_name = group_name
        self.orig: ExpAnalyzer = self.load_stability_status(PType.ORIG)
        self.group = dict()

    def load_stability_status(self, typ):
        if typ == PType.ORIG:
            exp_name = "baseline"
        elif typ == PType.CORE:
            exp_name = "unsat_core"
        elif typ == PType.EXTD:
            exp_name = "unsat_core"
        elif typ == PType.BLOT:
            exp_name = "bloat"
        elif typ == PType.SHKP:
            exp_name = "shake"
        else:
            assert False

        proj = PM.load_project(self.group_name, typ, enable_dummy=True)
        exp = ExpPart(exp_name, proj, "z3_4_12_2")
        exp = ExpAnalyzer(exp, self.ana, enable_dummy=True)

        return exp