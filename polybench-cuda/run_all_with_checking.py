"""
SH: Modified run script from run_all.py

Modifications:

- Fix error averaging over runs.
- Check results (includes update to Makefile.generic)
  - Results checked against first run (e.g., seq.out) using floating point comparison.
  - Note two tests do not have TEST_ARGS for results.
- Add option to skip runs that already have results (for restarting)
- Removed 'atax' kluge to obtain bmark keys
- Currently doing 3 runs only by default.

"""

from matplotlib.ticker import MultipleLocator, FormatStrFormatter, AutoMinorLocator
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import rcParams
from matplotlib import rc

import json
import argparse
import math
import os
import sys
import subprocess
from threading import Timer
from termcolor import colored
from collections import ChainMap

SKIP_IF_EXISTS = True
TEST_ARGS_MISSING = ["3mm", "mvt"]


def clean_all_bmarks(root_path, bmark_list, result_path):
    os.chdir(result_path)
    # os.system("rm -rf *")  # SH too risky for me.
    for bmark in bmark_list:
        os.chdir(os.path.join(root_path, bmark))
        make_process = subprocess.Popen(
            ["make", "clean"], stdout=subprocess.DEVNULL, stderr=subprocess.STDOUT
        )

        if make_process.wait() != 0:
            print(colored("Clean failed for %s" % bmark, "red"))

    print("Finish cleaning")
    return 0


def get_time(root_path, bmark, test_types):
    os.chdir(os.path.join(root_path, bmark))
    result = {bmark: {}}
    print(f"{bmark}")
    for test_type in test_types:
        # with open(test_type+".time", 'r') as f:
        # result[bmark][test_type] = float(f.readline().strip())
        with open(test_type + ".time", "r") as f:
            for line in f:
                stripped = line.strip()
                try:
                    result[bmark][test_type] = float(stripped)
                    break
                except ValueError:
                    continue
    return result


def run_one(path, bmark, test_type):
    os.chdir(path)

    if SKIP_IF_EXISTS:
        # kluged as sub-types (gcc/clang/clang.noelle etcc are not passed to this function currently).
        fnd = False
        if test_type == "seq":
            out_file = f"{test_type}.out"
            time_file = f"{test_type}.time"
            if (
                (os.path.exists(out_file) and os.path.getsize(out_file) > 0)
                or bmark in TEST_ARGS_MISSING
            ) and (os.path.exists(time_file) and os.path.getsize(time_file) > 0):
                # print(f"{test_type} on {bmark} exists. Skipping...")
                return True
        elif test_type == "openmp":
            out_files = [f"{test_type}.gcc.out", f"{test_type}.clang.out"]
            time_files = [f"{test_type}.gcc.time", f"{test_type}.clang.time"]
            fnd = True
        elif test_type == "tulip":
            out_files = [
                f"{test_type}.gcc.out",
                f"{test_type}.clang.out",
                f"{test_type}.clang.noelle.out",
                f"{test_type}.gcc.noelle.out",
            ]
            time_files = [
                f"{test_type}.gcc.time",
                f"{test_type}.clang.time",
                f"{test_type}.clang.noelle.time",
                f"{test_type}.gcc.noelle.time",
            ]
            fnd = True

        if fnd and (
            (
                all(os.path.exists(fle) and os.path.getsize(fle) > 0 for fle in out_files)
                or bmark in TEST_ARGS_MISSING
            )
            and all(os.path.exists(fle) and os.path.getsize(fle) > 0 for fle in time_files)
        ):
            return True

    print("Generating %s on %s " % (test_type, bmark))
    with open(test_type + ".log", "w") as fd:
        print(f'Making {"check_"+test_type}')
        # This writes results to files. Files are compared later.
        # print(f"{bmark=}")  # SH check
        if bmark not in TEST_ARGS_MISSING:
            make_process = subprocess.Popen(["make", "check_" + test_type], stdout=fd, stderr=fd)
            stdout, stderr = make_process.communicate()
        else:
            print(f"No TEST_ARGS for {bmark}.")

        print(f'Making {"run_"+test_type}')

        make_process = subprocess.Popen(["make", "run_" + test_type], stdout=fd, stderr=fd)
        timer = Timer(7200, make_process.kill)
        try:
            timer.start()
            stdout, stderr = make_process.communicate()
        finally:
            timer.cancel()

        if make_process.wait() != 0:
            print(colored("%s failed for %s " % (test_type, bmark), "red"))
            return False
        else:
            print(colored("%s succeeded for %s " % (test_type, bmark), "green"))
            return True


def run_all(root_path, bmark, tests):
    bmark_path = os.path.join(root_path, bmark)
    status = {}
    for test in tests:
        status[bmark + ":" + test] = run_one(bmark_path, bmark, test)
    return status


def Postprocess(perf_dic_acc, perf_dic, bmark_list, run_num):
    for bmark in bmark_list:
        for key in perf_dic[bmark].keys():
            perf_dic[bmark][key] = 0
            for i in range(run_num):
                perf_dic[bmark][key] = perf_dic[bmark][key] + perf_dic_acc[i][bmark][key] / run_num

    mean = {"geomean": {}}
    for key in next(iter(perf_dic.values())).keys():
        geo = 1
        for bmark in bmark_list:
            geo = geo * pow(perf_dic[bmark][key], 1 / len(bmark_list))
            mean["geomean"][key] = geo  # SH could de-indent as dont use in loop

    perf_dic.update(mean)
    bmark_list.append("geomean")

    return perf_dic, bmark_list


def check_results(root_path, bmark, test_types):
    output = {}
    result = {}
    benchmark_path = os.path.join(root_path, bmark)

    if bmark in TEST_ARGS_MISSING:
        result[bmark] = None
        return result

    # Read base file and split into float values
    with open(os.path.join(benchmark_path, f"{test_types[0]}.out"), "r") as f:
        base_content = f.read()
    base_values = [float(x) for x in base_content.split()]

    output[bmark] = {test_types[0]: base_content}
    result[bmark] = {}

    for test_type in test_types[1:]:
        file_path = os.path.join(benchmark_path, f"{test_type}.out")
        with open(file_path, "r") as f:
            current_content = f.read()
        current_values = [float(x) for x in current_content.split()]

        output[bmark][test_type] = current_content

        # Compare values using isclose
        if len(base_values) == len(current_values) and all(
            math.isclose(bv, cv) for bv, cv in zip(base_values, current_values)
        ):
            result[bmark][test_type] = True
        else:
            result[bmark][test_type] = False

        # too isolate diffs
        # iii=0
        # for bv, cv in zip(base_values, current_values):
        # iii+=1
        # if not math.isclose(bv, cv):
        # print(f"{iii} {bv} {cv}")
    return result


def set_config():
    parser = argparse.ArgumentParser()

    parser.add_argument("-n", "--core-num", type=int, default=10, help="Number of cores")
    parser.add_argument("-r", "--run_num", type=int, default=3, help="Number of runs")  # 5

    args = parser.parse_args()

    config = {}
    config["root_path"] = os.path.join(os.getcwd(), "../polybench-cuda")

    bmark_list = [
        "syrk",
        "syr2k",
        "gemm",
        "2mm",
        "3mm",
        "doitgen",
        "adi",
        "fdtd-2d",
        "gemver",
        "jacobi-1d-imper",
        "jacobi-2d-imper",
        "mvt",
        "atax",
        "bicg",
        "gesummv",
        "symm",
        "lu",
        "covariance",
        "correlation",
        "trmm",
        "cholesky",
        "nussinov",
        "seidel-2d",
        "heat-3d",
    ]

    # bmark_list = ['mvt', 'gesummv', '3mm', '2mm']
    # bmark_list = ['syrk']

    config["core_num"] = args.core_num
    config["bmark_list"] = bmark_list
    config["run_num"] = args.run_num

    config["result_path"] = os.path.join(config["root_path"], "../", "tulip-results")

    return config


if __name__ == "__main__":
    if SKIP_IF_EXISTS:
        print(f"Note: SKIP_IF_EXISTS is set - will skip running tests that already have output")

    tests = ["seq", "openmp", "tulip"]
    results = [
        "seq",
        "openmp.clang",
        "openmp.gcc",
        "tulip.clang",
        "tulip.gcc",
        "tulip.clang.noelle",
        "tulip.gcc.noelle",
    ]
    # tests = ['icx']
    # results = ['tulip.icx', 'tulip.icx.noelle']
    # tests = ['openmp']
    # results = ['openmp.clang', 'openmp.gcc']

    config = set_config()
    if not config:
        print("Bad configuration, please start over.")
        sys.exit(1)

    print(f"Will run {config['run_num']} repititions for each run")

    print("\n\n### Experiment Start ####")
    if not os.path.exists(config["result_path"]):
        os.makedirs(config["result_path"])

    os.chdir(config["result_path"])
    log_path = os.path.join(config["result_path"], "results.log")
    clean_all_bmarks(config["root_path"], config["bmark_list"], config["result_path"])

    perf_dic_acc = {}
    for j in range(config["run_num"]):
        perf_dic = {}
        perf_list = []  # SH clear so get new results
        for bmark in config["bmark_list"]:
            run_all(config["root_path"], bmark, tests)
            perf_list.append(get_time(config["root_path"], bmark, results))
        for i, bmark in enumerate(config["bmark_list"]):
            perf_dic.update(perf_list[i])
        perf_dic_acc[j] = perf_dic

    perf_dic = {}
    for bmark in config["bmark_list"]:
        perf_dic[bmark] = {}
        for result in results:
            perf_dic[bmark][result] = 0
    temp_bmark_list = config["bmark_list"]
    perf_dic, config["bmark_list"] = Postprocess(
        perf_dic_acc, perf_dic, config["bmark_list"], config["run_num"]
    )

    for bmark in config["bmark_list"]:
        if bmark != "geomean":
            check_output = check_results(config["root_path"], bmark, results)
            # Could have a None value if no TEST_ARGS
            if any(subdict and not all(subdict.values()) for subdict in check_output.values()):
                print(f"Output mismatch {check_output}")
