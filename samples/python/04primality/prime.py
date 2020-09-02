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
    if len(sys.argv) != 2:
        print("Error: Usage python prime.py <number>")
        sys.exit(1)
    try:
        number = float(sys.argv[1])
    except ValueError:
        print("Error: Expected a number. Received", sys.argv[1])
        sys.exit(2)
    print(is_prime(number))
