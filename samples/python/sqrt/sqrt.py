import sys

def find_sqrt(number):
    number = float(number)
    x = number
    y = 1.0
    e = 0.000000001
    while x - y > e:
        x = (x + y) / 2.0
        y = number / x
    return x


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Error: Usage python sqrt.py <number>")
        sys.exit(1)
    try:
        number = float(sys.argv[1])
    except ValueError:
        print("Error: Expected a number. Received", sys.argv[1])
        sys.exit(2)
    print(find_sqrt(number))
