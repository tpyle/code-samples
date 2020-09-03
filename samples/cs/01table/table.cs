using System;

namespace Table {
    class Exec {
        const int LIMIT = 5;
        static void Main(string[] args) {
            Console.Write("   ");
            for (int i = 1; i <= LIMIT; i++) {
                Console.Write(i.ToString().PadRight(3));
            }
            Console.WriteLine();
            
            for (int a = 1; a <= LIMIT; a++) {
                Console.Write(a.ToString().PadRight(3));
                for (int b = 1; b <= LIMIT; b++) {
                    Console.Write((a*b).ToString().PadRight(3));
                }
                Console.WriteLine();
            }
        }
    }
}
