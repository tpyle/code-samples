import kotlin.math.sqrt


fun isPrime(num: Int): Boolean {
    val limit = sqrt(num.toDouble()).toInt();
    for (n in 2..limit) {
        if (num.rem(n) == 0) {
            return false;
        }
    }
    return true;
}


fun main(args: Array<String>) {
    if (args.size == 0) {
        System.err.println("Error: Usage `kotlin sqrt <number> [<number> ...]`");
        System.exit(1);
    }
    for (arg in args) {
        var number: Int = 0;
        try {
            number = arg.toInt();
        } catch (e: NumberFormatException) {
            System.err.println(String.format("Error: Expected to receive a number. Received '%s'.", arg));
            System.exit(1);
        }
        println(String.format("%d => %s", number, if (isPrime(number)) "true" else "false"));
    }
}
