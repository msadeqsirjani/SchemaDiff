using SchemaDiff.Library.Models;
using System;
using Xunit;

namespace SchemaDiff.Library.Test
{
    public class SqlUserTest
    {
        [Fact]
        public void UsernameShouldBeEscaped()
        {
            var user = new SqlUser("ray", "ray");

            var createScript = user.ScriptCreate();

            Assert.StartsWith("CREATE USER [ray]", createScript, StringComparison.CurrentCultureIgnoreCase);
        }
    }
}
