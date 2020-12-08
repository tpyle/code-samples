int readLines(FileStream f) {
    int count = 0;
    while (f.read_line() != null) {
        count++;
    }
    return count;
}

void main(string[] args) {
    if (args.length > 2) {
        stderr.printf("Error: Usage %s [<file>]\n", args[0]);
        Process.exit(1);
    }
    int count = (args.length > 1) ?
        readLines(FileStream.open(args[1], "r")) :
        readLines(stdin);
    print("%d\n", count);
}
