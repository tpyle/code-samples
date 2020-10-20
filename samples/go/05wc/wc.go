package main

import (
    "fmt"
    "os"
    "bufio"
)


func main() {
    if len(os.Args) > 2 {
        fmt.Fprintf(os.Stderr, "Error: Usage %s [<file>]\n", os.Args[0]);
        os.Exit(1);
    }

    var file = os.Stdin;

    if len(os.Args) == 2 {
        _file, err := os.Open(os.Args[1]);
        if err != nil {
            fmt.Fprintf(os.Stderr, "Error: Failed to open %s\n", os.Args[1]);
            os.Exit(2);
        }
        defer _file.Close();
        file = _file;
    }

    scanner := bufio.NewScanner(file);
    lines  := 0;
    for scanner.Scan() {
        lines += 1;
    }

    fmt.Printf("%d\n", lines);
}
