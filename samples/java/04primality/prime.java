import java.lang.Math;


public class prime {

    public static boolean isPrime(double number) {
        int limit = (int)Math.sqrt(number);
        for (int i = 2; i <= limit; i++) {
            if (number % i == 0) {
                return false;
            }
        }
        return true;
    }
    
    public static void main(String[] args) {
        if (args.length == 0) {
            System.err.println("Error: Usage 'java prime <number> [<number> ...]'");
            System.exit(1);
        }
        for (String arg : args) {
            int number = 0;
            try {
                number = Integer.parseInt(arg);
            } catch (java.lang.NumberFormatException e) {
                System.err.println(String.format("Error: Expected an integer, received '%s'", arg));
                System.exit(2);
            }
            System.out.println(String.format("%d => %s", number, isPrime(number) ? "true" : "false"));
        }
    }

}
