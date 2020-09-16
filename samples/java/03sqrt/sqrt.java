public class sqrt {
    final static double accuracy = 0.0000001;

    public static double findSqrt(double number) {
        double x = number;
        double y = 1;
        while (x-y > accuracy) {
            x = (x + y) / 2;
            y = number / x;
        }
        return x;
    }
    
    public static void main(String[] args) {
        if (args.length == 0) {
            System.err.println("Error: Usage 'java sqrt <number> [<number> ...]'");
            System.exit(1);
        }
        for (String arg : args) {
            double number = 0;
            try {
                number = Double.parseDouble(arg);
            } catch (java.lang.NumberFormatException e) {
                System.err.println(String.format("Error: Expected a number, received '%s'", arg));
                System.exit(2);
            }
            System.out.println(String.format("%f => %f", number, findSqrt(number)));
        }
    }

}
