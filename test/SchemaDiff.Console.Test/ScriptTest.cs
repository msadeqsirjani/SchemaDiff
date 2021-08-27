using Xunit;

namespace SchemaDiff.Console.Test
{
    public class ScriptTest
    {
        [Fact]
        public void TestParse()
        {
            var cmd = new Script();
            string[] args = {
                "script",
                "cn:server=localhost;database=DEVDB;Trusted_Connection=yes;",
                "d:\\DEVDB",
                "-d",
                "--data",
                "^Lookup"
            };

            //Assert.IsTrue(cmd.Parse(args));
        }
    }
}