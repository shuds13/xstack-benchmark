import os
import csv

# List of benchmark directories
bmark_list = ['gesummv', 'fdtd-2d', 'heat-3d', 'atax', 'bicg', 'nussinov', 'lu', 'syrk', 'syr2k',
              'seidel-2d', 'gemm', '2mm', '3mm', 'doitgen', 'mvt', 'trmm', 'symm',
              'adi', 'jacobi-1d-imper', 'jacobi-2d-imper', 'gemver', 'covariance', 'correlation']

# Function to read the timing from a file
def read_time(file_path):
    try:
        with open(file_path, 'r') as file:
            return float(file.readline().strip())
    except:
        return None

def collect_results(compiler):
    # Prepare the CSV file
    csv_file = f'benchmark_results_{compiler}.csv'
    with open(csv_file, mode='w', newline='') as csvfile:
        fieldnames = ['benchmark', 'openmp_time', 'tulip_time', 'noelle_time']
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        writer.writeheader()

        # Iterate through each directory in the list
        for bmark in bmark_list:
            if os.path.exists(bmark):
                os.chdir(bmark)

                # Initialize the result dictionary
                result = {'benchmark': bmark, 'openmp_time': None, 'tulip_time': None, 'noelle_time': None}

                # Read times from files
                openmp_time = read_time(f'openmp.{compiler}.time')
                tulip_time = read_time(f'tulip.{compiler}.time')
                noelle_time = read_time(f'tulip.{compiler}.noelle.time')

                result['openmp_time'] = openmp_time
                result['tulip_time'] = tulip_time
                result['noelle_time'] = noelle_time

                # Write the result to the CSV file if openmp_time is available
                if openmp_time is not None:
                    writer.writerow(result)
                else:
                    print(f'Missing OpenMP time for {bmark}')

                os.chdir('..')
            else:
                print(f'Directory {bmark} does not exist.')

    print(f'Results have been collected into {csv_file}')

compiler = 'gcc'  # Change to 'gcc' if needed
collect_results(compiler)
