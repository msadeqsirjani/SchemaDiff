using SchemaDiff.Library.Models;
using System.Linq;
using Xunit;
using Xunit.Abstractions;

namespace SchemaDiff.Library.Test
{
    public class FunctionTest
    {
        private readonly ITestOutputHelper _testOutputHelper;

        public FunctionTest(ITestOutputHelper testOutputHelper)
        {
            _testOutputHelper = testOutputHelper;
        }

        private const string ExampleFunc = @"
CREATE FUNCTION [dbo].udf_GetDate()
RETURNS DATETIME AS
BEGIN
	RETURN GETDATE()
END
";

        [Fact]
        public void TestScript()
        {
            var f = new Routine("dbo", "udf_GetDate", null)
            {
                RoutineType = Routine.RoutineKind.Function,
                Text = ExampleFunc
            };
            _testOutputHelper.WriteLine(f.ScriptCreate());
            TestHelper.ExecBatchSql(f.ScriptCreate() + "\nGO", "");
            TestHelper.ExecSql("drop function [dbo].[udf_GetDate]", "");
        }

        [Fact]
        public void TestScriptNoWarnings()
        {
            var f = new Routine("dbo", "udf_GetDate", null)
            {
                Text = ExampleFunc,
                RoutineType = Routine.RoutineKind.Function
            };
            Assert.False(f.Warnings().Any());
        }

        [Fact]
        public void TestScriptWarnings()
        {
            var f = new Routine("dbo", "udf_GetDate2", null)
            {
                Text = ExampleFunc,
                RoutineType = Routine.RoutineKind.Function
            };
            Assert.True(f.Warnings().Any());
        }
    }
}