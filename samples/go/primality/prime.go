package main

import (
    "fmt"
    "math"
    "os"
    "strconv"
)


func isPrime(number float64) (bool) {
    var limit float64 = math.Sqrt(number)
    for i := 2.0; i <= limit; i++ {
        if math.Mod(number, i) == 0 {
            return false
        }
    }
    return true
}


func main() {
    if len(os.Args) != 2 {
        fmt.Println("Error: Usage ./prime <number>")
        os.Exit(1)
    }
    number, err := strconv.ParseFloat(os.Args[1], 64)
    if err != nil {
        fmt.Println("Error: Expected to receive a number, recevied", os.Args[1])
        os.Exit(2)
    }
    fmt.Println(isPrime(number))
}
