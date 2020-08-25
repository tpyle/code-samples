using System;

namespace SquareRoot {
    class Exec {

        static double FindSqrt(double number) {
            double x = number;
            double y = 1.0;
            const double e = 0.0000001;
            while ((x - y) > e) {
                x = (x + y) / 2;
                y = number / x;
            }
            return x;
        }

        static void Main(string[] args) {
            if (args.Length != 1) {
                Console.Error.WriteLine("Error: Expected to receive 1 argument ./sqrt <number>.");
                System.Environment.Exit(1);
            }
            double number = 0;
            try {
                number = Double.Parse(args[0]);
            } catch (System.FormatException) {
                Console.Error.WriteLine(string.Format("Error: Expected to receive 1 argument that was a number. Received {0}", args[0]));
                System.Environment.Exit(2);
            }
            Console.WriteLine(FindSqrt(number));
        }
    }
}
