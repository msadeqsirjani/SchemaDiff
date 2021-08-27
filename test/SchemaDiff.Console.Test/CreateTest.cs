using SchemaDiff.Library;
using SchemaDiff.Library.Models;
using System.Data.SqlClient;
using System.IO;
using Xunit;

namespace SchemaDiff.Console.Test
{
    public class CreateTest
    {
        [Fact]
        public void TestRun()
        {
            var db = new Database { Name = "CREATE_TEST" };
            db.Dir = db.Name;
            db.ScriptToDir();
            var cnStr = new SqlConnectionStringBuilder(ConfigHelper.TestDb) { InitialCatalog = db.Name };
            DbHelper.DropDb(cnStr.ToString());
            var cmd = new Create();
            string[] args = { cnStr.ToString() };
            var consoleOut = new StringWriter();
            System.Console.SetOut(consoleOut);
            //Assert.True(cmd.Run(args) > -1);
            //Assert.Contains("Database created successfully", consoleOut.ToString());
            System.Console.SetIn(new StringReader("n"));
            //Assert.False(cmd.Run(args) > -1);
            //Assert.Contains("already exists do you want to drop it", consoleOut.ToString());
            //Assert.Contains("create command cancelled", consoleOut.ToString());
            System.Console.SetIn(new StringReader("y"));
            //Assert.True(cmd.Run(args) > -1);
            //Assert.Contains("already exists do you want to drop it", consoleOut.ToString());
            //Assert.Contains("Database created successfully", consoleOut.ToString());
        }
    }
}
