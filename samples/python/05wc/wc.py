import sys


if __name__ == "__main__":
    if len(sys.argv) > 2:
        print(f"Error: Usage {sys.argv[0]} [<file>].", file=sys.stderr)
        exit(1)

    infile = open(sys.argv[1],'r') if len(sys.argv) > 1 else sys.stdin

    length = 0
    while infile.readline():
        length += 1

    print(length)
