using System;
using System.IO;

namespace LineReader {
    class Exec {
        static void Main(string[] args) {
            if (args.Length > 1) {
                Console.Error.WriteLine("Error: Expected to receive at most 1 argument ./cat [<file>]");
                System.Environment.Exit(1);
            }

            if (args.Length == 1) {
                Console.SetIn(new StreamReader(args[0]));
            }

            string line;
            while ((line = Console.ReadLine()) != null) {
                Console.WriteLine(line);
            }
        }
    }
}
