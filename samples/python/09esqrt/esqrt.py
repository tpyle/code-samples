import sys
import threading
from concurrent.futures import ThreadPoolExecutor

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
    if len(sys.argv) < 2:
        print("Error: Usage python sqrt.py <number> [<number> ...]")
        sys.exit(1)
    
    with ThreadPoolExecutor(max_workers=50) as executor:
        results = []
        for arg in sys.argv[1:]:
            try:
                number = float(arg)
            except ValueError:
                print("Error: Expected a number. Received", arg, file=sys.stderr)
                continue
            results.append((arg, executor.submit(find_sqrt, number)))
        
        for arg, result in results:
            print(f"{arg} => {result.result()}")
