package main

import (
    "fmt"
    "math"
    "os"
    "strconv"
)


func isPrime(number float64) (bool) {
    var limit float64 = math.Sqrt(number);
    for i := 2.0; i <= limit; i++ {
        if math.Mod(number, i) == 0 {
            return false;
        }
    }
    return true;
}


func main() {
    if len(os.Args) < 2 {
        fmt.Println("Error: Usage ./prime <number> [<number> ...]");
        os.Exit(1);
    }

    for _, arg := range os.Args[1:] {
        number, err := strconv.ParseFloat(arg, 64)
        if err != nil {
            fmt.Printf("Error: Expected to receive a number, recevied '%s'\n", arg);
            os.Exit(2);
        }

        var primestring = "false";
        if isPrime(number) {
            primestring = "true";
        }

        fmt.Printf("%f => %s\n", number, primestring);
    }
}
