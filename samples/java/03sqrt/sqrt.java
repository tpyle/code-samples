package sqrt;


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
        if (args.length != 1) {
            System.err.println("Error: Usage 'java sqrt <number>'");
            System.exit(1);
        }
        double number = 0;
        try {
        number = Double.parseDouble(args[0]);
        } catch (java.lang.NumberFormatException e) {
            System.err.println("Error: Expected a number, received '" + args[0] + "'");
            System.exit(2);
        }
        System.out.println(findSqrt(number));
    }

}
