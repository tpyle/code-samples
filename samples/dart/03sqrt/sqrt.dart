import "dart:io";
import "package:sprintf/sprintf.dart";


const accuracy = 0.00000001;

double find_sqrt(double number) {
    double x = number;
    double y = 1;
    while (x - y > accuracy) {
        x = (x + y ) / 2;
        y = number / x;
    }
    return x;
}


void main(List<String> arguments) {
    if (arguments.length < 1) {
        stderr.write("Error: usage dart sqrt.dart <number> [<number> ...]\n");
        exit(1);
    }
    for (String arg in arguments) {
        double number = 0;
        try {
            number = double.parse(arg);
        }
        on FormatException {
            stderr.write("Error: Expected to receive a double. Received '" + arg + "'\n");
            exit(2);
        }
        print(sprintf("%f => %f", [number, find_sqrt(number)]));
    }
}
