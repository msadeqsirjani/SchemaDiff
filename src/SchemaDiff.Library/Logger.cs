using System;
using System.Diagnostics;

namespace SchemaDiff.Library
{
    public class Logger : ILogger
    {
        private readonly bool _verbose;

        public Logger(bool verbose)
        {
            _verbose = verbose;
        }

        public void Log(TraceLevel level, string message)
        {
            var previousColor = Console.ForegroundColor;

            switch (level)
            {
                case TraceLevel.Error:
                    Console.ForegroundColor = ConsoleColor.Red;
                    break;
                case TraceLevel.Verbose:
                    if (!_verbose)
                        return;
                    break;
                case TraceLevel.Warning:
                    Console.ForegroundColor = ConsoleColor.Yellow;
                    break;
                case TraceLevel.Off:
                    break;
                case TraceLevel.Info:
                    break;
                default:
                    throw new ArgumentOutOfRangeException(nameof(level), level, null);
            }

            if (message.EndsWith("\r"))
                Console.Write(message);
            else
                Console.WriteLine(message);

            Console.ForegroundColor = previousColor;
        }
    }
}