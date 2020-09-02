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
    if (args.size != 1) {
        System.err.println("Error: Expected to receive an argument <number>");
        System.exit(1);
    }
    var number: Double = 0.0;
    try {
        number = args[0].toDouble();
    } catch (e: NumberFormatException) {
        System.err.println("Error: Expected to receive a number. Received '" + args[0] + "'");
        System.exit(1);
    }
    print(findSqrt(number).toString() + "\n");
}
