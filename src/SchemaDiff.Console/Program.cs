using ManyConsole;
using System;
using System.Collections.Generic;
using System.Diagnostics;

namespace SchemaDiff.Console
{
    internal class Program
    {
        private static int Main(string[] args)
        {
            try
            {
                return ConsoleCommandDispatcher.DispatchCommand(
                    GetCommands(), args, System.Console.Out);
            }
            catch (Exception ex)
            {
                System.Console.WriteLine(ex.Message);
                System.Console.WriteLine(ex.StackTrace);
                return -1;
            }
            finally
            {
#if DEBUG
                if (Debugger.IsAttached)
                    ConsoleQuestion.WaitForKeyPress();
#endif
            }
        }

        private static IEnumerable<ConsoleCommand> GetCommands()
        {
            return new List<ConsoleCommand> {
                new Script(),
                new Create(),
                new Compare()
            };
        }
    }
}
