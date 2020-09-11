using System;
using System.Linq;

namespace Reverse {
    class Exec {
        static void Main(string[] args) {
            if (args.Length < 1) {
                Console.Error.WriteLine("Error: Expected to receive at least 1 argument ./reverse <number> [<number> ...]");
                System.Environment.Exit(1);
            }
            bool hasbegun = false;
            foreach (string arg in args.Reverse()) {
                if (hasbegun) {
                    Console.Write(" ");
                }
                Console.Write(arg);
                hasbegun = true;
            }
            Console.WriteLine();
        }
    }
}
