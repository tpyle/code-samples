package main

import (
    "fmt"
    "os"
    "strconv"
)


func findSqrt(number float64) (float64) {
    var x float64 = float64(number)
    var y float64= 1.0
    const e float64 = 0.0000001
    for x - y > e {
        x = (x + y) / 2.0
        y = number / x
    }
    return x
}


func main() {
    if (len(os.Args) != 2) {
        fmt.Println("Error: Usage ./sqrt <number>")
        os.Exit(1)
    }
    var number int = 0
    number, err := strconv.Atoi(os.Args[1])
    if err != nil {
        fmt.Println("Error: Expected to receive a number, recevied", os.Args[1])
        os.Exit(2)
    }
    fmt.Println(findSqrt(float64(number)))
}
