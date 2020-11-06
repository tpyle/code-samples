import java.io.File;

fun main(args: Array<String>) {
    if (args.size > 1) {
        System.err.println("Error: Usage `kotlin wc [<file>]`");
        System.exit(1);
    }
    var count: Int = 1;
    if (args.size == 1) {
        File(args[0]).forEachLine { count++ };
    } else {
        while (readLine() != null) {
            count++;
        }
    }
    println(count);
}
