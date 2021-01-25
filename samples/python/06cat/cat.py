import sys

if __name__ == '__main__':
    if len(sys.argv) > 2:
        print(f"Error: Usage {sys.argv[0]} [<file>].", file=sys.stderr)
        exit(1)

    infile = open(sys.argv[1],'r') if len(sys.argv) > 1 else sys.stdin

    line = infile.read(100)
    while line:
        sys.stdout.write(line)
        line = infile.read(100)