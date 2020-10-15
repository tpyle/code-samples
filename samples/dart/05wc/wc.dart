import "dart:io";
import "dart:async";
import "dart:convert";


void main(List<String> arguments) {
    if (arguments.length > 1) {
        stderr.write("Error: Usage dart wc.dart [<file>]\n");
        exit(1);
    }

    Stream<List<int>> inputStream = stdin;
    if (arguments.length == 1) {
        var inFile = new File(arguments[0]);
        inputStream = inFile.openRead();
    }

    int lines = 0;

    inputStream
        .transform(utf8.decoder)
        .transform(new LineSplitter())
        .listen((String _line) {
                lines++;
            },
            onDone: () { print(lines); },
            onError: (e) { print(e.toString()); });
}
