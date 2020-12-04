void main(string[] args) {
    bool started = false;
    for (int i = args.length-1; i > 0; i--) {
        if (started) {
            print(" ");
        } else {
            started = true;
        }
        print("%s", args[i]);
    }
    if (started) {
        print("\n");
    }
}
