"""
Plot script.

Plots Tulip and Tulip/Noelle speedup v original openMP.
"""

import os
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import matplotlib.ticker as ticker

# List of benchmark directories
# bmark_list = ['syrk', 'syr2k', 'gemm', '2mm', '3mm', 'doitgen', 'adi', 'fdtd-2d', 'gemver',
              # 'jacobi-1d-imper', 'jacobi-2d-imper', 'mvt', 'atax', 'bicg', 'gesummv', 'symm',
              # 'lu', 'covariance', 'correlation', 'trmm', 'cholesky', 'nussinov', 'seidel-2d', 'heat-3d']

# Order as in paper
bmark_list = ['gesummv', 'fdtd-2d', 'heat-3d', 'atax', 'bicg', 'nussinov', 'lu', 'syrk', 'syr2k',
              'seidel-2d', 'gemm', '2mm', '3mm', 'doitgen', 'mvt', 'trmm', 'symm',
              'adi','jacobi-1d-imper', 'jacobi-2d-imper', 'gemver', 'covariance', 'correlation']

# Set this to True to print speedups
print_speedups = False

# Function to read the timing from a file
def read_time(file_path):
    try:
        with open(file_path, 'r') as file:
            return float(file.readline().strip())
    except:
        return None

# Initialize the data for the bar chart
benchmarks = []
tulip_speedups = []
noelle_speedups = []

# Iterate through each directory in the list
for bmark in bmark_list:
    if os.path.exists(bmark):
        os.chdir(bmark)

        # Check if openmp.clang.time exists
        if os.path.isfile('openmp.clang.time'):
            openmp_time = read_time('openmp.clang.time')

            # Check for tulip.clang.time and tulip.clang.noelle.time
            tulip_time = read_time('tulip.clang.time')
            noelle_time = read_time('tulip.clang.noelle.time')

            if tulip_time is not None or noelle_time is not None:
                benchmarks.append(bmark)

                tulip_speedup = openmp_time / tulip_time if tulip_time is not None else 0
                noelle_speedup = openmp_time / noelle_time if noelle_time is not None else 0

                tulip_speedups.append(tulip_speedup)
                noelle_speedups.append(noelle_speedup)

                if tulip_time is None:
                    print('Missing Tulip time for', bmark)
                if noelle_time is None:
                    print('Missing Noelle time for', bmark)

                if print_speedups:
                    print(f"Benchmark: {bmark}")
                    print(f"  Tulip Speedup: {tulip_speedup:.2f}")
                    print(f"  Noelle Speedup: {noelle_speedup:.2f}")

        os.chdir('..')

# Plot the bar chart
if benchmarks:
    width = 0.35  # the width of the bars
    fig, ax = plt.subplots(figsize=(10, 6))
    x = range(len(benchmarks))

    ax.bar(x, tulip_speedups, width, label='tulip.clang speedup')
    ax.bar([p + width for p in x], noelle_speedups, width, label='tulip.clang.noelle speedup')

    # Set the y-axis to use integer ticks
    ax.yaxis.set_major_locator(ticker.MultipleLocator(1))
    ax.set_ylim(0, max(int(max(tulip_speedups + noelle_speedups, default=0)), 3) + 1)

    # Add gridlines at every integer
    ax.grid(True, which='both', axis='y', linestyle='-', color='gray', linewidth=0.5)
    ax.axhline(1, color='black', linewidth=1.5, label='Speedup = 1')

    ax.set_ylabel('Speedup relative to original OpenMP')
    ax.set_title('OpenMP on CPU (Clang): Speedup of OpenMP transpiled from CUDA v original OpenMP')
    ax.set_xticks([p + width / 2 for p in x])
    ax.set_xticklabels(benchmarks, rotation=70)
    ax.legend()

    # Save the plot to a file
    plt.tight_layout()
    plt.savefig('benchmark_speedups.png')
    plt.close()
