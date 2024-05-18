def calculate_coverage(file_path, output_file):

    weights = [(0.718, 0.7565), (0.0815, 0.0316), (0, 0), (0, 0), (0.1157, 0.1226), (0.0839, 0.0894)]
    with open(file_path, 'r') as file:
        lines = file.readlines()

    for i in range(0, len(lines), 6):
        hour_data = lines[i:i + 6]
        total_block_coverage = 0.0
        total_line_coverage = 0.0
        timestamp = None

        for j, line in enumerate(hour_data):
            parts = line.strip().split(': ')
            timestamp = parts[0]  # 时间戳
            coverage_data = parts[1].split()
            block_coverage = float(coverage_data[0])
            line_coverage = float(coverage_data[1])

            total_block_coverage += block_coverage * weights[j][0]
            total_line_coverage += line_coverage * weights[j][1]

        with open(output_file, 'a') as out_file:
            out_file.write(f" {total_block_coverage:.2f} {total_line_coverage:.2f}\n")

if __name__ == "__main__":
    input_file = "cov_data/qfuzz-20240305.txt"
    output_file = "cov_data/cov-qfuzz-20240305.txt"
    calculate_coverage(input_file, output_file)