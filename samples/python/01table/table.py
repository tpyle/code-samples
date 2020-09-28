import sys


LIMIT = 5


def main():
    for a in range(LIMIT+1):
        if a:
            sys.stdout.write("%-3d" % (a,))
        else:
            sys.stdout.write("%-3s" % ("",))
        for b in range(LIMIT+1):
            if b:
                if a:
                    sys.stdout.write("%-3d" % (a*b,))
                else:
                    sys.stdout.write("%-3d" % (b,))
        print()


if __name__ == "__main__":
    main()
