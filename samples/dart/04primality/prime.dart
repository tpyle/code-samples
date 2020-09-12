import "dart:io";
import "dart:math";
import "package:sprintf/sprintf.dart";


bool is_prime(int number) {
    int limit = sqrt(number).toInt();
    for (int count = 2; count <= limit; count++) {
        if (number % count == 0) {
            return false;
        }
    }
    return true;
}


void main(List<String> arguments) {
    if (arguments.length < 1) {
        stderr.write("Error: Usage dart prime.dart <number> [<number> ...]\n");
        exit(1);
    }

    for (String arg in arguments) {
        int number = 0;
        try {
            number = int.parse(arg);
        }
        on FormatException {
            stderr.write(sprintf("Error: Expected to receive an integer. Received '%s'\n", arg));
            exit(2);
        }
        print(sprintf("%d => %s", [number, is_prime(number) ? "true" : "false"]));
    }
}
