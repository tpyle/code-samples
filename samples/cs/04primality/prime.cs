using System;

namespace Primality {
    class Exec {
        static bool IsPrime(int number) {
            int limit = (int)Math.Sqrt(number);
            for (int i = 2; i <= limit; i++) {
                if (number % i == 0) {
                    return false;
                }
            }
            return true;
        }

        static void Main(string[] args) {
            if (args.Length < 1) {
                Console.Error.WriteLine("Error: Expected to receive at least 1 argument ./prime <number> [<number> ...]");
                System.Environment.Exit(1);
            }
            foreach (string arg in args) {
                int number = 0;
                try {
                    number = Int32.Parse(arg);
                } catch (System.FormatException) {
                    Console.Error.WriteLine(string.Format("Error: Expected to receive an integer argument. Received {0}.", arg));
                    System.Environment.Exit(2);
                }
                Console.WriteLine(string.Format("{0} => {1}", number, IsPrime(number)));
            }
        }
    }
}
