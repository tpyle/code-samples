package main

import (
    "fmt"
    "os"
    "strconv"
)


func findSqrt(number float32) (float32) {
    var x float32 = float32(number)
    var y float32 = 1.0
    const e float32 = 0.0000001
    for x - y > e {
        fmt.Println(x,y)
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
    fmt.Println(findSqrt(float32(number)))
}
