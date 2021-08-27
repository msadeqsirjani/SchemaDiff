using System;

namespace SchemaDiff.Console
{
    public static class ConsoleQuestion
    {
        public static bool AskYesNo(string question)
        {
            System.Console.Write($"{question} (Y/N)? ");

            ConsoleKeyInfo key;
            do
            {
                key = System.Console.ReadKey();
            } while (key.Key != ConsoleKey.Y && key.Key != ConsoleKey.N);

            System.Console.WriteLine();
            return key.Key == ConsoleKey.Y;
        }

        public static void WaitForKeyPress()
        {
            System.Console.WriteLine("Press any key to continue...");
            System.Console.ReadKey(true);
        }
    }
}