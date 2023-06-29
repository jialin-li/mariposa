# Mariposa

Mariposa is a tool for testing and quantifying SMT-based proof stability.  Given an SMT query and a solver, Mariposa:
* creates multiple semantics-preserving mutations of the query
* runs the solver on the mutants and collects the results and performance data
* applies statistical tests to the data in order to assign a stability category
* reports the stability category and relevant stability metrics


## Mariposa Data

If you are looking for the benchmark and experiment queies from the Mariposa paper, they are available [here](https://github.com/secure-foundations/mariposa-data/).

## Prerequisites

1. Clone this repository.  Since this repository currently includes in the commit history the compressed database files from our past experiments, we recommend that you avoid fetching the full history when cloning:
```
git clone --filter=blob:none git@github.com:secure-foundations/mariposa.git
```

2. You will need a working Rust toolchain to compile the Mariposa code that parses and mutates queries.  To compile this code, run:
```
cargo build --release
```

3. You will need a working Python 3 installation to run the code that performs the experiments and analysis.  This code was written using Python 3.8.10 (and has not been tested on other versions).  To install the required packages, run
```
pip3 install -r requirements.txt
```

4. There are multiple Z3 binaries available in the `solvers/` folder which are already set up in the `configs.json` file. To install other versions of Z3, create a new solver configuration in the the `configs.json` file and point it to the location of the binary. See the [Solvers](#solvers) section for more information on editing `configs.json`.

## Quick Start

To perform a basic sanity check:
```
python3 scripts/main.py single -s z3_4_12_1 -q data/samples/single_check.smt2
```
This will test the stability of the query `data/samples/single_check.smt2` on the solver `Z3 4.12.1`, using the default settings for experiments. The result should be something like this:

```
solver used: solvers/z3-4.12.1
query: gen/single_check.smt2_/split.1.smt2
| mutation   | status   | success      | mean(second)   | std(second)   |
|------------|----------|--------------|----------------|---------------|
| overall    | stable   | x            | x              | x             |
| shuffle    | stable   | 61/61 100.0% | 0.02           | 0.0           |
| rename     | stable   | 61/61 100.0% | 0.02           | 0.0           |
| reseed     | stable   | 61/61 100.0% | 0.02           | 0.0           |
```
The solver and query pair is expected to be stable, as shown above.
The first row is the overall status, which considers the results from all the mutation methods.
Each row that follows is a summary of results from a mutation method, which includes the success rate, mean of response times, and standard deviation of response times.
The success count is also given.
Using the default configuration,`60` mutants are generated for each mutation method in addition to the original query.
Therefore `61/61` means all the mutants (and the original) succeeded for a mutation method. 

## Configurations

Mariposa supports many configuration options that can drastically affect the outcome of your experiments.
These options are loaded from `configs.json`, which provides several predefined settings.
To use a different setting, we recommend modifying the `configs.json` file, which contains 4 parts.

### Experiments

Under the key `experiments`, there are a few predefined settings that control how the experiments are run. 

* `mutations` is a list of enabled mutation methods; currently `shuffle`, `rename`, `reseed` are supported.
* `num_mutants` is the number of mutants to generate for each mutation method. It is set to `60` In the previous example, so `shuffle`, `rename`, `reseed` each generated `60` mutants for `180` in total.
* `keep_mutants` controls whether the files containing the mutants will be removed after the experiment. Usually only set to `true` for debugging, since mutants can occupy a lot of space.
* `init_seed` please leave as "" for now.
* `exp_timeout` is the time limit in seconds for the solver to run on each mutant.
* `num_procs` is the number of processes to run in parallel when performing the experiments. We recommend setting this to be at most **number_of_physical_cores - 1**. 
* `db_path` is the database file to store the results. This is automatically taken care of in the `single` mode, as explained below. 
* `db_mode` please leave as "update" for now.

```
{
    "name": "main",
    "mutations": [
        "shuffle",
        "rename",
        "reseed"
    ],
    "num_mutants": 60,
    "keep_mutants": false,
    "init_seed": "",
    "exp_timeout": 60,
    "num_procs": 7,
    "db_path": "./data/mariposa.db",
    "db_mode": "update"
}
```
### Analyzers

Under the key `analyzers`, there are a few predefined settings that control how the analysis is performed. The stability of a query can be classified as unsolvable, unstable, stable, or inconclusive. The classification depends on the query's success rate, like so:

```
    consistently                             consistently
        poor            inconsistent             good
0% |-----------|----------------------------|-----------|  100%
          r_solvable                    r_stable
                     mutant success rate
```

When a query's success rate, `r`, is greater than `r_stable`, it is stable. When `r` is less than `r_solvable`, it is unsolvable. Otherwise, it is unstable. The analysis can also be inconclusive for a variety of reasons (too small of a sample size, p value not low enough, etc.).

* `ana_timeout` is the time limit in seconds used in the analysis, which can be different from the `exp_timeout` above. One may want to test out smaller `ana_timeout` thresholds and see how the results differ.
* `confidence` is the confidence level used in hypothesis tests.
* `r_solvable` is the threshold between an `unsolvable` and `unstable` query in terms of the success rate. 
* `r_stable` is the threshold between an `unstable` and `stable` query in terms of the success rate. 
* `discount` is used to account for stable queries that solve close to the time limit which could be falsely considered unstable. If queries are found to be unstable after an instability test, the mean runtime of the query and mutants, T, is taken into consideration. If T is greater than or equal to the discount * solver timeout time (`exp_timeout`), the query is not immediately labeled as unstable and will continue to a stability test where it can be categorized as inconclusive or stable.

```
{
    "name": "default",
    "ana_timeout": 60,
    "confidence": 0.05,
    "r_solvable": 0.05,
    "r_stable": 0.95,
    "discount": 0.8
}
```
### Solvers

Under the key `solvers`, there are a few predefined solvers. 

* `path` is where the solver can be found. 
* `date` is the date when the solver was released. 

```
{
    "name": "z3_4_4_2",
    "path": "solvers/z3-4.4.2",
    "date": "2015/10/05"
}
```
### Projects

Under the key `projects`, there are a few predefined projects. A project specifies a collection of **preprocessed** queries in a directory. The directory contains only `*.smt2` files and no nested directories. Each `.smt2` file contains one `(check-sat)` command and is parsable by Mariposa. `preprocess` mode can be used to produce such a directory (explained later). 

* `frame_work` is an arbitrary label; we use it to record the verification tool that produced the original SMT2 files. 
* `clean_dir` is the directory that contains the preprocessed queries.
* `artifact_solver_name` is the original solver that the project used during development, which should match one of the definitions under `solvers`. 

```
{
    "name": "s_komodo",
    "frame_work": "serval",
    "clean_dir": "data/s_komodo_z3_clean",
    "artifact_solver_name": "z3_4_4_2"
},
```

## Use Cases

The Python script `scripts/main.py` is Mariposa's main interface. It has a required argument for operation mode, which is either `single`, `multiple`, or `preprocess`.

* `single` mode "quickly" tests out the stability of a single query-solver pair.
* `multiple` mode performs experiments on a predefined project (in the `configs.json`), which can contain many queries that are already *preprocessed*. 
* `preprocess` gathers and cleans the queries so that they can be run in the `multiple` mode. 

### Single Mode 

`single` is generally used for a "quick" stability test of a single query and a solver. The two required arguments for this mode are:
* `-q/--query`, the path to the query 
* `-s/--solver`, the name of the solver (see `configs.json`)

The results are stored in a temporary database under `gen/`. This mode can handle a query with multiple `(check-sat)` commands. In that case, the input query will be split for each `(check-sat)`. For example: 
```
python3 scripts/main.py single -s z3_4_12_1 -q data/samples/multiple_checks.smt2
```
The query file actually contains three `(check-sat)` commands. The split queries are placed in `gen/multiple_checks.smt2_/`, which is named after the query that ran.
```
[INFO] single mode will use db gen/multiple_checks.smt2_/test.db
[INFO] data/samples/multiple_checks.smt2 is split into 3 file(s)
[INFO] created table single_misc_z3_4_12_1_exp
[INFO] 550 tasks queued
[INFO] workers finished
[INFO] post processing exp data
solver used: solvers/z3-4.12.1

query: gen/multiple_checks.smt2_/split.3.smt2
| mutation   | status   | success      | mean(second)   | std(second)   |
|------------|----------|--------------|----------------|---------------|
| overall    | stable   | x            | x              | x             |
| shuffle    | stable   | 61/61 100.0% | 0.02           | 0.0           |
| rename     | stable   | 61/61 100.0% | 0.02           | 0.0           |
| reseed     | stable   | 61/61 100.0% | 0.02           | 0.0           |

query: gen/multiple_checks.smt2_/split.2.smt2
| mutation   | status   | success      | mean(second)   | std(second)   |
|------------|----------|--------------|----------------|---------------|
| overall    | stable   | x            | x              | x             |
| shuffle    | stable   | 61/61 100.0% | 0.02           | 0.0           |
| rename     | stable   | 61/61 100.0% | 0.02           | 0.0           |
| reseed     | stable   | 61/61 100.0% | 0.02           | 0.0           |

query: gen/multiple_checks.smt2_/split.1.smt2
| mutation   | status   | success      | mean(second)   | std(second)   |
|------------|----------|--------------|----------------|---------------|
| overall    | stable   | x            | x              | x             |
| shuffle    | stable   | 61/61 100.0% | 0.02           | 0.0           |
| rename     | stable   | 61/61 100.0% | 0.02           | 0.0           |
| reseed     | stable   | 61/61 100.0% | 0.02           | 0.0           |
```
The temporary database is `gen/multiple_checks.smt2_/test.db`, as the debug info suggests. One can also repeat the analysis without the experiment:
```
python3 scripts/main.py single -s z3_4_12_1 -q data/samples/multiple_checks.smt2 --analysis-only
```
The above will load the temporary database. 

### Preprocess Mode 

`preprocess` mode can be used to preprocess a directory that contains  `*.smt2` files (potentially under nested directories).
For example, maybe a verification tool, say Dafny, exports SMT queries from a project, say IronFleet, into some directory. 
Then this mode will traverse the given directory, flatten the file paths, split any `*.smt2` files that have multiple `(check-sat)` commands, and place the resultant query files in the output directory.
This also serves as a sanity check that the queries are accepted by Mariposa's parser.

. The two required arguments are:
* `--in-dir` is the input directory
* `--out-dir` is the output directory, which should **not** exist when calling the script.

### Multiple Mode 

`multiple` mode can be used for large-scale stability testing over a project. The three required arguments for this mode are:
* `-p/--project`, a project that must already be defined in the `configs.json` file, and it must have already gone through the `preprocess` mode. 
* `-s/--solver`, the name of the solver (see `configs.json`)
* `-e/--experiment`, the name of the experiment configuration. 

The `dummy` project contains 4 queries, 2 of which are unstable. To run the `dummy` project using the `test` configuration:
```
python3 scripts/main.py multiple -p dummy -s z3_4_12_1 -e test 
```
The output should look something like the following:
```
project directory: data/dummy_clean
solver used: solvers/z3-4.12.1
total queries: 4
|--------------|-------|------------|
| category     | count | percentage |
| stable       | 2     | 50.0       |
| unstable     | 2     | 50.0       |
| inconclusive | 0     | 0.0        |
| unsolvable   | 0     | 0.0        |

listing unstable queries...

query: data/dummy_clean/lib-Lang-LinearSequence.i.dfy.Impl__LinearSequence__i.__default.AllocAndMoveLseq.smt2
| mutation   | status   | success     | mean(second)   | std(second)   |
|------------|----------|-------------|----------------|---------------|
| overall    | unstable | x           | x              | x             |
| shuffle    | unstable | 38/61 62.3% | 0.16           | 0.01          |
| rename     | unstable | 44/61 72.1% | 0.16           | 0.01          |
| reseed     | unstable | 52/61 85.2% | 0.16           | 0.01          |

query: data/dummy_clean/verified-sha-sha256.i.dfyImpl___module.__default.lemma__SHA256FinalHelper1.smt2
| mutation   | status   | success      | mean(second)   | std(second)   |
|------------|----------|--------------|----------------|---------------|
| overall    | unstable | x            | x              | x             |
| shuffle    | unstable | 55/61 90.2%  | 0.72           | 0.15          |
| rename     | unstable | 53/61 86.9%  | 0.76           | 0.23          |
| reseed     | stable   | 61/61 100.0% | 0.49           | 0.01          |
```

## Caveats

* A project must be **preprocessed** and added to `configs.json` before it is used.
* A solver must be added to `configs.json` before it is used.
* Each spinoff  process is expected to be CPU bound, so setting `num_procs` to a large value that overloads the machine will negatively impact the results.

