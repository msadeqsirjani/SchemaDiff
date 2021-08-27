using SchemaDiff.Library.Models;
using Xunit;

namespace SchemaDiff.Library.Test
{
    public class ConstraintTest
    {
        public class ScriptCreate
        {
            private static Constraint SetUp()
            {
                return new("test", "INDEX", "a,b")
                {
                    Table = new Table("dbo", "test")
                };
            }

            [Fact]
            public void Clustered_Index()
            {
                var c = SetUp();
                c.IndexType = "CLUSTERED";
                Assert.Equal(
                    "CREATE CLUSTERED INDEX [test] ON [dbo].[test] ([a], [b])",
                    c.ScriptCreate());
            }

            [Fact]
            public void NonClustered_Index()
            {
                var c = SetUp();
                c.IndexType = "NONCLUSTERED";
                Assert.Equal(
                    "CREATE NONCLUSTERED INDEX [test] ON [dbo].[test] ([a], [b])",
                    c.ScriptCreate());
            }

            [Fact]
            public void Clustered_ColumnStore_Index()
            {
                var c = SetUp();
                c.IndexType = "CLUSTERED COLUMNSTORE";
                Assert.Equal(
                    "CREATE CLUSTERED COLUMNSTORE INDEX [test] ON [dbo].[test] ([a], [b])",
                    c.ScriptCreate());
            }

            [Fact]
            public void NonClustered_ColumnStore_Index()
            {
                var c = SetUp();
                c.IndexType = "NONCLUSTERED COLUMNSTORE";
                Assert.Equal(
                    "CREATE NONCLUSTERED COLUMNSTORE INDEX [test] ON [dbo].[test] ([a], [b])",
                    c.ScriptCreate());
            }

            [Fact]
            public void Primary_Key()
            {
                var c = SetUp();
                c.Type = "PRIMARY KEY";
                c.IndexType = "NONCLUSTERED";
                Assert.Equal(
                    "CONSTRAINT [test] PRIMARY KEY NONCLUSTERED ([a], [b])",
                    c.ScriptCreate());
            }

            [Fact]
            public void Foreign_Key()
            {
                var c = SetUp();
                c.Type = "FOREIGN KEY";
                c.IndexType = "NONCLUSTERED";
                Assert.Equal(
                    "CONSTRAINT [test] FOREIGN KEY NONCLUSTERED ([a], [b])",
                    c.ScriptCreate());
            }

            [Fact]
            public void Check_Constraint()
            {
                var c = Constraint.CreateCheckedConstraint("test", true, false, "[a]>(1)");
                Assert.Equal(
                    "CHECK NOT FOR REPLICATION [a]>(1)",
                    c.ScriptCreate());
            }
        }
    }
}