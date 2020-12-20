using System;
using System.Collections;

namespace EnvDumper {
    class Exec {
        static void Main(string[] args) {
            IDictionary environmentVariables = Environment.GetEnvironmentVariables();
            foreach (DictionaryEntry de in environmentVariables)
            {
                Console.WriteLine("{0} = {1}", de.Key, de.Value);
            }
        }
    }
}
