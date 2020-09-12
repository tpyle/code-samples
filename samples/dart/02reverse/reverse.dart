import "dart:io";


void main(List<String> arguments) {
    if (arguments.length < 1) {
        stderr.write("Error: Usage dart reverse.art <arg> [<arg> ...]\n");
        exit(1);
    }

    bool isfirst = true;
    for (String arg in arguments.reversed) {
        if (!isfirst) {
            stdout.write(" ");
        }
        stdout.write(arg);
        isfirst = false;
    }
    print("");
}
