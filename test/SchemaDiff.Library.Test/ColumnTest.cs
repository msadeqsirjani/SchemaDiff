using SchemaDiff.Library.Models;
using System;
using Xunit;

namespace SchemaDiff.Library.Test
{
    public class ColumnTest
    {
        public class ScriptCreate
        {
            [Fact]
            public void Int_No_Trailing_Space()
            {
                var c = new Column("test", "int", false, null);
                var scriptCreate = c.ScriptCreate();
                Assert.Equal("[test] [int] NOT NULL", scriptCreate);
            }

            [Fact]
            public void Varchar_No_Trailing_Space()
            {
                var c = new Column("test", "varchar", 10, false, null);
                var scriptCreate = c.ScriptCreate();
                Assert.Equal("[test] [varchar](10) NOT NULL", scriptCreate);
            }

            [Fact]
            public void Decimal_No_Trailing_Space()
            {
                var c = new Column("test", "decimal", 4, 2, false, null);
                var scriptCreate = c.ScriptCreate();
                Assert.Equal("[test] [decimal](4,2) NOT NULL", scriptCreate);
            }

            [Fact]
            public void No_Trailing_Space_With_Default()
            {
                var c = new Column("test", "int", true, new Default("df_test", "0", false));
                var lines = c.ScriptCreate()
                    .Split(new[] { Environment.NewLine }, StringSplitOptions.None);
                Assert.Equal("[test] [int] NULL", lines[0]);
                Assert.Equal("      CONSTRAINT [df_test] DEFAULT 0", lines[1]);
            }

            [Fact]
            public void No_Trailing_Space_With_No_Name_Default()
            {
                var c = new Column("test", "int", true, new Default("df_ABCDEF", "0", true));
                var lines = c.ScriptCreate()
                    .Split(new[] { Environment.NewLine }, StringSplitOptions.None);
                Assert.Equal("[test] [int] NULL", lines[0]);
                Assert.Equal("       DEFAULT 0", lines[1]);
            }

            [Fact]
            public void Computed_column()
            {
                var c = new Column("test", "int", false, null) { ComputedDefinition = "(A + B)" };

                var scriptCreate = c.ScriptCreate();
                Assert.Equal("[test] AS (A + B)", scriptCreate);
            }

            [Fact]
            public void Computed_Column_Persisted()
            {
                var c = new Column("test", "int", false, null)
                { ComputedDefinition = "(A + B)", Persisted = true };

                var scriptCreate = c.ScriptCreate();
                Assert.Equal("[test] AS (A + B) PERSISTED", scriptCreate);
            }
        }
    }
}
