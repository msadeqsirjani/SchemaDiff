using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;

namespace SchemaDiff.Console.Test
{
    public static class ConfigHelper
    {
        private static readonly IDictionary<string, string> Config;

        public static string TestDb => GetSetting("testdb");

        public static string TestSchemaDir => GetSetting("test_schema_dir");

        public static string SqlDbDiffPath => GetSetting("SqlDbDiffPath");

        private static string GetSetting(string key)
        {
            var val = Environment.GetEnvironmentVariable(key);
            return val ?? (Config.TryGetValue(key, out val) ? val : null);
        }

        static ConfigHelper()
        {
            var settingsString = File.ReadAllText("appsetting.json");
            Config = JsonConvert.DeserializeObject<IDictionary<string, string>>(settingsString);
        }
    }
}
