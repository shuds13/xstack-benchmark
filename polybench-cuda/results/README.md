# Results dirs

A polybench dir give results for a given run.

Output is in file run.out (includes any tests where results did not match).

The script use to the run tests was `run_all_with_checking.py`.

# To obtain graphs

    python plot_comparison_omp_v_tulip_omp.py clang

or

    python plot_comparison_omp_v_tulip_omp.py gcc

to get graphs for a selected compiler. This uses *.out and *.time files in each dir.
