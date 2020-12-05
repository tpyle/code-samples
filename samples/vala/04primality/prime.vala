bool isPrime(int number) {
    double limit = Math.sqrt(number);
    for (int i = 2; i <= limit; i++) {
        if (number % i == 0) {
            return false;
        }
    }
    return true;
}

void main(string[] args) {
    if (args.length < 2) {
        stderr.printf("Error: Usage %s <number> [<number> ...]\n", args[0]);
        Process.exit(1);
    }
    for (int i = 1; i < args.length; i++) {
        int val = int.parse(args[i]);

        if (val.to_string() != args[i] || val < 0) {
            print("Error: Expected to receive a valid positive integer. Received '%s'.\n", args[i]);
            Process.exit(2);
        }
        print("%s => %s\n", args[i], isPrime(val) ? "true" : "false");
    }
}
