package main

import (
    "fmt"
    "os"
    "strconv"
)


func findSqrt(number float64) (float64) {
    var x float64 = float64(number);
    var y float64= 1.0;
    const e float64 = 0.0000001;
    for x - y > e {
        x = (x + y) / 2.0;
        y = number / x;
    }
    return x;
}


func main() {
    if (len(os.Args) < 2) {
        fmt.Fprintln(os.Stderr, "Error: Usage ./sqrt <number> [<number> ...]");
        os.Exit(1);
    }

    for _, arg := range os.Args[1:] {
        var number int = 0;
        number, err := strconv.Atoi(arg);
        if err != nil {
            fmt.Printf("Error: Expected to receive an integer, received %s\n", arg);
            os.Exit(2);
        }
        fmt.Printf("%d => %f\n", number, findSqrt(float64(number)))
    }
}
