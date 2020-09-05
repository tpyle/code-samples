import "dart:io";
import 'package:sprintf/sprintf.dart';


void main(List<String> arguments) {

    const limit = 5;

    stdout.write("   ");

    for (int i = 1; i <= limit; i++) {
        stdout.write(sprintf("%-3d", [i]));
    }
    print("");

    for (int a = 1; a <= limit; a++) {
        stdout.write(sprintf("%-3d", [a]));
        for (int b = 1; b <= limit; b++) {
            stdout.write(sprintf("%-3d", [a*b]));
        }
        print("");
    }
}
