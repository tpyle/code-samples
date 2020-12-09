void readLines(FileStream f) {
    string line;
    while ((line = f.read_line()) != null) {
        print("%s\n", line);
    }
}

void main(string[] args) {
    if (args.length > 2) {
        stderr.printf("Error: Usage %s [<file>]\n", args[0]);
        Process.exit(1);
    }
    if (args.length > 1) {
        readLines(FileStream.open(args[1], "r"));
    } else {
        readLines(stdin);
    }
}
