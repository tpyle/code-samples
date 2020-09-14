package main

import (
    "fmt"
)


func main() {
    const LIMIT int = 5;
    fmt.Printf("   ");
    for i := 1; i <= LIMIT; i++ {
        fmt.Printf("%-3d", i);
    }
    fmt.Println();

    for a := 1; a <= LIMIT; a++ {
        fmt.Printf("%-3d", a);
        for b := 1; b <= LIMIT; b++ {
            fmt.Printf("%-3d", a*b);
        }
        fmt.Println();
    }
}
