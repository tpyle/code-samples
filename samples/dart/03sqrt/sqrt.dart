import "dart:io";


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
    if (arguments.length != 1) {
        stderr.write("Error: usage dart sqrt.dart <number>\n");
        exit(1);
    }
    double number = 0;
    try {
        number = double.parse(arguments[0]);
    }
    on FormatException {
        stderr.write("Error: Expected to receive a double. Received '" + arguments[0] + "'\n");
        exit(2);
    }
    print(find_sqrt(number));
}
