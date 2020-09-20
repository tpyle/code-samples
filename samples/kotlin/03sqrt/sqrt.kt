fun findSqrt(num: Double): Double {
    var x = num;
    var y: Double = 1.0;
    val e: Double = 0.000001;
    while (x-y > e) {
        x = (x + y) / 2;
        y = num / x;
    }
    return x;
}

fun main(args: Array<String>) {
    if (args.size == 0) {
        System.err.println("Error: Usage `kotlin sqrt <number> [<number> ...]`");
        System.exit(1);
    }
    for (arg in args) {
        var number: Double = 0.0;
        try {
            number = arg.toDouble();
        } catch (e: NumberFormatException) {
            System.err.println(String.format("Error: Expected to receive a number. Received '%s'.", arg));
            System.exit(1);
        }
        println(String.format("%f => %f", number, findSqrt(number)));
    }
}
