import math
import sys


def is_prime(number):
    limit = math.sqrt(number)
    start = 2
    while start <= limit:
        if number % start == 0:
            return False
        start += 1
    return True


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Error: Usage python prime.py <number> [<number> ...]")
        sys.exit(1)

    for arg in sys.argv[1:]:
        try:
            number = int(arg)
        except ValueError:
            print("Error: Expected an integer. Received", arg)
            sys.exit(2)
        print(number, "=>", is_prime(number))
