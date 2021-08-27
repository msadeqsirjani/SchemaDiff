using System;
using System.Data.SqlClient;

namespace SchemaDiff.Library.Test
{
    public class TestHelper
    {
        public static bool EchoSql => true;

        public void SetUp()
        {
            var conn = GetConnString("TESTDB");
            DbHelper.DropDb(conn);
            DbHelper.CreateDb(conn);
            SqlConnection.ClearAllPools();
            // TODO: verify that database called "model" is empty, otherwise tests will fail because new databases are created with this as a template
        }

        public static void ExecSql(string sql, string dbName)
        {
            if (EchoSql) Console.WriteLine(sql);
            using var cn = new SqlConnection(ConfigHelper.TestDb);
            if (!string.IsNullOrEmpty(dbName))
            {
                cn.ConnectionString = GetConnString(dbName);
            }

            cn.Open();
            using var cm = cn.CreateCommand();
            cm.CommandText = sql;
            cm.ExecuteNonQuery();
        }

        public static void ExecBatchSql(string sql, string dbName)
        {
            DbHelper.ExecBatchSql(GetConnString(dbName), sql);
        }

        public static string GetConnString(string dbName)
        {
            using var cn = new SqlConnection(ConfigHelper.TestDb);
            var connString = cn.ConnectionString;
            if (!string.IsNullOrEmpty(dbName))
            {
                connString = cn.ConnectionString.Replace("database=" + cn.Database,
                    "database=" + dbName);
            }

            return connString;
        }

        public static void DropDb(string dbName)
        {
            if (!DbExists(dbName)) return;
            ExecSql("ALTER DATABASE " + dbName + " SET SINGLE_USER WITH ROLLBACK IMMEDIATE",
                "");
            ExecSql("drop database " + dbName, "");
            ClearPool(dbName);
        }

        public static bool DbExists(string dbName)
        {
            using var cn = new SqlConnection(ConfigHelper.TestDb);
            cn.Open();
            using var cm = cn.CreateCommand();
            cm.CommandText = "select db_id('" + dbName + "')";
            var exists = !ReferenceEquals(cm.ExecuteScalar(), DBNull.Value);

            return exists;
        }

        public static void ClearPool(string dbName)
        {
            using var cn = new SqlConnection(GetConnString(dbName));
            SqlConnection.ClearPool(cn);
        }
    }
}
