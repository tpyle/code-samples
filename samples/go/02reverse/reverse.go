package main

import (
    "fmt"
    "os"
)


func main() {
    if len(os.Args) < 2 {
        fmt.Fprintf(os.Stderr, "Error: Usage %s <arg> [<arg> ...]\n", os.Args[0]);
    }

    for i := len(os.Args)-1; i > 0; i-- {
        fmt.Print(os.Args[i]);
        if i > 1 {
            fmt.Print(" ");
        }
    }
    fmt.Println();
}
