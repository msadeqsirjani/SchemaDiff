using System.Diagnostics;

namespace SchemaDiff.Library
{
    public interface ILogger
    {
        void Log(TraceLevel level, string message);
    }
}
