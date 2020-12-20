import "dart:io";
import "dart:async";
import "dart:convert";


void main(List<String> arguments) {
    if (arguments.length > 1) {
        stderr.write("Error: Usage dart cat.dart [<file>]\n");
        exit(1);
    }

    Stream<List<int>> inputStream = stdin;
    if (arguments.length == 1) {
        var inFile = new File(arguments[0]);
        inputStream = inFile.openRead();
    }

    inputStream
        .transform(utf8.decoder)
        .transform(new LineSplitter())
        .listen((String _line) {
                print(_line);
            },
            onDone: () {},
            onError: (e) { stderr.write(e.toString()); });
}
