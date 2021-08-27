using ManyConsole;
using Mono.Options;
using SchemaDiff.Library.Commands;
using System;
using System.Diagnostics;
using System.IO;

namespace SchemaDiff.Console
{
    internal class Compare : ConsoleCommand
    {
        private string _source;
        private string _target;
        private string _outDiff;
        private bool _overwrite;
        private bool _verbose;
        private bool _debug;

        public Compare()
        {
            IsCommand("Compare", "CreateDiff two databases.");
            Options = new OptionSet();
            SkipsCommandSummaryBeforeRunning();
            HasRequiredOption(
                "s|source=",
                "Connection string to a database to compare.",
                o => _source = o);
            HasRequiredOption(
                "t|target=",
                "Connection string to a database to compare.",
                o => _target = o);
            HasOption(
                "outFile=",
                "Create a sql diff file in the specified path.",
                o => _outDiff = o);
            HasOption(
                "o|overwrite",
                "Overwrite existing target without prompt.",
                o => _overwrite = o != null);
            HasOption(
                "v|verbose",
                "Enable verbose mode (show detailed changes).",
                o => _verbose = o != null);
            HasOption(
                "debug",
                "Launch the debugger",
                o => _debug = o != null);
        }

        public override int Run(string[] remainingArguments)
        {
            if (_debug) Debugger.Launch();
            if (!string.IsNullOrEmpty(_outDiff))
            {
                System.Console.WriteLine();
                if (!_overwrite && File.Exists(_outDiff))
                {
                    var question = $"{_outDiff} already exists - do you want to replace it";
                    if (!ConsoleQuestion.AskYesNo(question))
                    {
                        return 1;
                    }

                    _overwrite = true;
                }
            }

            var compareCommand = new CompareCommand
            {
                Source = _source,
                Target = _target,
                Verbose = _verbose,
                OutDiff = _outDiff,
                Overwrite = _overwrite
            };

            try
            {
                return compareCommand.Execute() ? 1 : 0;
            }
            catch (Exception ex)
            {
                throw new ConsoleHelpAsException(ex.Message);
            }
        }
    }
}
