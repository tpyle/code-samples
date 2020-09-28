import sys


def main():
    print(" ".join(map(str, sys.argv[:0:-1])))


if __name__ == "__main__":
    main()
