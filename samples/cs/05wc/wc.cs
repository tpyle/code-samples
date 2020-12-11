using System;
using System.IO;

namespace LineCount {
    class Exec {
        static void Main(string[] args) {
            if (args.Length > 1) {
                Console.Error.WriteLine("Error: Expected to receive at most 1 argument ./wc [<file>]");
                System.Environment.Exit(1);
            }

            int lines = 0;
            if (args.Length == 1) {
                Console.SetIn(new StreamReader(args[0]));
            }

            while (Console.ReadLine() != null) {
                lines++;
            }

            Console.WriteLine(lines);
        }
    }
}
