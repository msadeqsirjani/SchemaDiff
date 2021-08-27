﻿using SchemaDiff.Library.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Text;
using Xunit;
using Xunit.Abstractions;

namespace SchemaDiff.Library.Test
{
    public class TableTest
    {
        private readonly ITestOutputHelper _testOutputHelper;

        public TableTest(ITestOutputHelper testOutputHelper)
        {
            _testOutputHelper = testOutputHelper;
        }

        private List<List<string>> TabDataToList(string data)
        {
            var lines = new List<List<string>>();
            foreach (var line in data.Split('\t'))
            {
                lines.Add(new List<string>());
                foreach (var field in line.Split('\t'))
                {
                    lines[^1].Add(field);
                }
            }

            ////remove the \r from the end of the last field of each line
            //foreach (List<string> line in lines) {
            //    if (line.Count == 0) continue;
            //    line[line.Count - 1] = line.Last.Remove(line.Last.Length - 1, 1);
            //}
            return lines;
        }

        [Fact]
        public void CompareConstraints()
        {
            var t1 = new Table("dbo", "Test");
            var t2 = new Table("dbo", "Test");

            //test equal
            t1.Columns.Add(new Column("first", "varchar", 30, false, null));
            t2.Columns.Add(new Column("first", "varchar", 30, false, null));
            t1.AddConstraint(
                Constraint.CreateCheckedConstraint("IsTomorrow", true, false, "fnTomorrow()"));
            t2.AddConstraint(
                Constraint.CreateCheckedConstraint("IsTomorrow", false, false, "Tomorrow <> 1"));

            var diff = t1.Compare(t2);
            Assert.Single(diff.ConstraintsChanged);
            Assert.NotNull(diff);
            Assert.True(diff.IsDiff);
        }

        [Fact]
        public void TestCompare()
        {
            var t1 = new Table("dbo", "Test");
            var t2 = new Table("dbo", "Test");

            //test equal
            t1.Columns.Add(new Column("first", "varchar", 30, false, null));
            t2.Columns.Add(new Column("first", "varchar", 30, false, null));
            t1.AddConstraint(new Constraint("PK_Test", "PRIMARY KEY", "first"));
            t2.AddConstraint(new Constraint("PK_Test", "PRIMARY KEY", "first"));

            var diff = t1.Compare(t2);
            Assert.NotNull(diff);
            Assert.False(diff.IsDiff);

            //test add
            t1.Columns.Add(new Column("second", "varchar", 30, false, null));
            diff = t1.Compare(t2);
            Assert.True(diff.IsDiff);
            Assert.Single(diff.ColumnsAdded);

            //test delete
            diff = t2.Compare(t1);
            Assert.True(diff.IsDiff);
            Assert.Single(diff.ColumnsDropped);

            //test diff
            t1.Columns.Items[0].Length = 20;
            diff = t1.Compare(t2);
            Assert.True(diff.IsDiff);
            Assert.Single(diff.ColumnsDiff);

            _testOutputHelper.WriteLine("--- create ----");
            _testOutputHelper.WriteLine(t1.ScriptCreate());

            _testOutputHelper.WriteLine("--- migrate up ---");
            _testOutputHelper.WriteLine(t1.Compare(t2).Script());

            _testOutputHelper.WriteLine("--- migrate down ---");
            _testOutputHelper.WriteLine(t2.Compare(t1).Script());
        }

        [Fact]
        public void TestExportData()
        {
            var t = new Table("dbo", "Status");
            t.Columns.Add(new Column("id", "int", false, null));
            t.Columns.Add(new Column("code", "char", 1, false, null));
            t.Columns.Add(new Column("description", "varchar", 20, false, null));
            t.Columns.Find("id").Identity = new Identity(1, 1);
            t.AddConstraint(new Constraint("PK_Status", "PRIMARY KEY", "id"));

            var conn = TestHelper.GetConnString("TESTDB");
            DbHelper.DropDb(conn);
            DbHelper.CreateDb(conn);
            SqlConnection.ClearAllPools();
            DbHelper.ExecBatchSql(conn, t.ScriptCreate());

            const string dataIn = @"1	R	Ready
2	P	Processing
3	F	Frozen
";
            var filename = Path.GetTempFileName();

            var writer = File.AppendText(filename);
            writer.Write(dataIn);
            writer.Flush();
            writer.Close();

            t.ImportData(conn, filename);
            var sw = new StringWriter();
            t.ExportData(conn, sw);
            Assert.Equal(dataIn, sw.ToString());

            File.Delete(filename);
        }

        [Fact]
        public void TestImportAndExportIgnoringComputedData()
        {
            var t = new Table("dbo", "Status");
            t.Columns.Add(new Column("id", "int", false, null));
            t.Columns.Add(new Column("code", "char", 1, false, null));
            t.Columns.Add(new Column("description", "varchar", 20, false, null));
            var computedCol = new Column("computed", "varchar", false, null)
            {
                ComputedDefinition = "code + ' : ' + description"
            };
            t.Columns.Add(computedCol);
            t.Columns.Find("id").Identity = new Identity(1, 1);
            t.AddConstraint(new Constraint("PK_Status", "PRIMARY KEY", "id"));

            var conn = TestHelper.GetConnString("TESTDB");
            DbHelper.DropDb(conn);
            DbHelper.CreateDb(conn);
            SqlConnection.ClearAllPools();
            DbHelper.ExecBatchSql(conn, t.ScriptCreate());

            const string dataIn = @"1	R	Ready
2	P	Processing
3	F	Frozen
";
            var filename = Path.GetTempFileName();

            var writer = File.AppendText(filename);
            writer.Write(dataIn);
            writer.Flush();
            writer.Close();

            try
            {
                t.ImportData(conn, filename);
                var sw = new StringWriter();
                t.ExportData(conn, sw);
                Assert.Equal(dataIn, sw.ToString());
            }
            finally
            {
                File.Delete(filename);
            }
        }

        [Fact]
        public void TestImportAndExportDateTimeWithoutLosePrecision()
        {
            var t = new Table("dbo", "Dummy");
            t.Columns.Add(new Column("id", "int", false, null));
            t.Columns.Add(new Column("createdTime", "datetime", false, null));
            t.Columns.Find("id").Identity = new Identity(1, 1);
            t.AddConstraint(new Constraint("PK_Status", "PRIMARY KEY", "id"));

            var conn = TestHelper.GetConnString("TESTDB");
            DbHelper.DropDb(conn);
            DbHelper.CreateDb(conn);
            SqlConnection.ClearAllPools();
            DbHelper.ExecBatchSql(conn, t.ScriptCreate());

            const string dataIn = @"1	2017-02-21 11:20:30.1
2	2017-02-22 11:20:30.12
3	2017-02-23 11:20:30.123
";
            var filename = Path.GetTempFileName();

            var writer = File.AppendText(filename);
            writer.Write(dataIn);
            writer.Flush();
            writer.Close();

            try
            {
                t.ImportData(conn, filename);
                var sw = new StringWriter();
                t.ExportData(conn, sw);
                Assert.Equal(dataIn, sw.ToString());
            }
            finally
            {
                File.Delete(filename);
            }
        }

        [Fact]
        public void TestImportAndExportNonDefaultSchema()
        {
            var s = new Schema("example", "dbo");
            var t = new Table(s.Name, "Example");
            t.Columns.Add(new Column("id", "int", false, null));
            t.Columns.Add(new Column("code", "char", 1, false, null));
            t.Columns.Add(new Column("description", "varchar", 20, false, null));
            t.Columns.Find("id").Identity = new Identity(1, 1);
            t.AddConstraint(new Constraint("PK_Example", "PRIMARY KEY", "id"));

            var conn = TestHelper.GetConnString("TESTDB");
            DbHelper.DropDb(conn);
            DbHelper.CreateDb(conn);
            SqlConnection.ClearAllPools();
            DbHelper.ExecBatchSql(conn, s.ScriptCreate());
            DbHelper.ExecBatchSql(conn, t.ScriptCreate());

            const string dataIn = @"1	R	Ready
2	P	Processing
3	F	Frozen
";
            var filename = Path.GetTempFileName();

            var writer = File.AppendText(filename);
            writer.Write(dataIn);
            writer.Flush();
            writer.Close();

            try
            {
                t.ImportData(conn, filename);
                var sw = new StringWriter();
                t.ExportData(conn, sw);
                Assert.Equal(dataIn, sw.ToString());
            }
            finally
            {
                File.Delete(filename);
            }
        }

        [Fact]
        public void TestLargeAmountOfRowsImportAndExport()
        {
            var t = new Table("dbo", "TestData");
            t.Columns.Add(new Column("test_field", "int", false, null));
            t.AddConstraint(new Constraint("PK_TestData", "PRIMARY KEY", "test_field")
            {
                IndexType = "NONCLUSTERED"
            });
            t.AddConstraint(new Constraint("IX_TestData_PK", "INDEX", "test_field")
            {
                // clustered index is required to ensure the row order is the same as what we import
                IndexType = "CLUSTERED",
                Table = t,
                Unique = true
            });

            var conn = TestHelper.GetConnString("TESTDB");
            DbHelper.DropDb(conn);
            DbHelper.CreateDb(conn);
            SqlConnection.ClearAllPools();
            DbHelper.ExecBatchSql(conn, t.ScriptCreate());

            var filename = Path.GetTempFileName();

            var writer = File.CreateText(filename);
            var sb = new StringBuilder();

            for (var i = 0; i < Table.RowsInBatch * 4.2; i++)
            {
                sb.AppendLine(i.ToString());
                writer.WriteLine(i.ToString());
            }

            writer.Flush();
            writer.Close();

            var dataIn = sb.ToString();
            Assert.Equal(dataIn,
                File.ReadAllText(
                    filename)); // just prove that the file and the string are the same, to make the next assertion meaningful!

            try
            {
                t.ImportData(conn, filename);
                var sw = new StringWriter();
                t.ExportData(conn, sw);

                Assert.Equal(dataIn, sw.ToString());
            }
            finally
            {
                File.Delete(filename);
            }
        }

        [Fact]
        public void TestScript()
        {
            //create a table with all known types, script it, and execute the script
            var t = new Table("dbo", "AllTypesTest");
            t.Columns.Add(new Column("a", "bigint", false, null));
            t.Columns.Add(new Column("b", "binary", 50, false, null));
            t.Columns.Add(new Column("c", "bit", false, null));
            t.Columns.Add(new Column("d", "char", 10, false, null));
            t.Columns.Add(new Column("e", "datetime", false, null));
            t.Columns.Add(new Column("f", "decimal", 18, 0, false, null));
            t.Columns.Add(new Column("g", "float", false, null));
            t.Columns.Add(new Column("h", "image", false, null));
            t.Columns.Add(new Column("i", "int", false, null));
            t.Columns.Add(new Column("j", "money", false, null));
            t.Columns.Add(new Column("k", "nchar", 10, false, null));
            t.Columns.Add(new Column("l", "ntext", false, null));
            t.Columns.Add(new Column("m", "numeric", 18, 0, false, null));
            t.Columns.Add(new Column("n", "nvarchar", 50, false, null));
            t.Columns.Add(new Column("o", "nvarchar", -1, false, null));
            t.Columns.Add(new Column("p", "real", false, null));
            t.Columns.Add(new Column("q", "smalldatetime", false, null));
            t.Columns.Add(new Column("r", "smallint", false, null));
            t.Columns.Add(new Column("s", "smallmoney", false, null));
            t.Columns.Add(new Column("t", "sql_variant", false, null));
            t.Columns.Add(new Column("u", "text", false, null));
            t.Columns.Add(new Column("v", "timestamp", false, null));
            t.Columns.Add(new Column("w", "tinyint", false, null));
            t.Columns.Add(new Column("x", "uniqueidentifier", false, null));
            t.Columns.Add(new Column("y", "varbinary", 50, false, null));
            t.Columns.Add(new Column("z", "varbinary", -1, false, null));
            t.Columns.Add(new Column("aa", "varchar", 50, true,
                new Default("DF_AllTypesTest_aa", "'asdf'", false)));
            t.Columns.Add(new Column("bb", "varchar", -1, true, null));
            t.Columns.Add(new Column("cc", "xml", true, null));
            t.Columns.Add(new Column("dd", "hierarchyid", false, null));

            _testOutputHelper.WriteLine(t.ScriptCreate());
            TestHelper.ExecSql(t.ScriptCreate(), "");
            TestHelper.ExecSql("drop table [dbo].[AllTypesTest]", "");
        }

        [Fact]
        public void TestScriptNonSupportedColumn()
        {
            Assert.Throws<NotSupportedException>(() =>
            {
                var t = new Table("dbo", "bla");
                t.Columns.Add(new Column("a", "madeuptype", true, null));
                t.ScriptCreate();
            });
        }
    }
}