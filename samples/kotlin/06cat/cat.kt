import java.io.File;

fun main(args: Array<String>) {
    if (args.size > 1) {
        System.err.println("Error: Usage `kotlin cat [<file>]`");
        System.exit(1);
    }
    if (args.size == 1) {
        File(args[0]).forEachLine { line -> println(line) };
    } else {
        var line: String? = readLine();
        while (line != null) {
            println(line);
            line = readLine();
        }
    }
}
