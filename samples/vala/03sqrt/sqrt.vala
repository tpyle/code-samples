const double ACCURACY = 0.000001;

double findSqrt(double number) {
    double x = number;
    double y = 1.0;
    while (x - y > ACCURACY) {
        x = (x + y)/2;
        y = number / x;
    }
    return x;
}

void main(string[] args) {
    if (args.length < 2) {
        stderr.printf("Error: Usage %s <number> [<number> ...]\n", args[0]);
        Process.exit(1);
    }
    for (int i = 1; i < args.length; i++) {
        double val;
        bool res;

        res = double.try_parse(args[i], out val);
        if (!res) {
            print("Error: Expected to receive a valid number. Received '%s'.\n", args[i]);
            Process.exit(2);
        }
        print("%s => %f\n", args[i], findSqrt(val));
    }
}
