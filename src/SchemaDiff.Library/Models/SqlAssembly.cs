using System;
using System.Collections.Generic;
using System.Linq;

namespace SchemaDiff.Library.Models
{
    public class SqlAssembly : INameable, IScriptable
    {
        public List<KeyValuePair<string, byte[]>> Files = new();
        public string Name { get; set; }
        public string PermissionSet;

        public SqlAssembly(string permissionSet, string name)
        {
            PermissionSet = permissionSet;
            Name = name;

            if (PermissionSet == "SAFE_ACCESS")
                PermissionSet = "SAFE";

            if (PermissionSet == "UNSAFE_ACCESS")
                PermissionSet = "UNSAFE";
        }

        public string ScriptCreate()
        {
            var commands = Files.Select((kvp, index) =>
                index == 0
                    ? $"CREATE ASSEMBLY [{Name}]\r\n{string.Empty}FROM {"0x" + Convert.ToHexString(kvp.Value)}\r\n{"WITH PERMISSION_SET = " + PermissionSet}"
                    : $"ALTER ASSEMBLY [{Name}]\r\nADD FILE FROM {"0x" + Convert.ToHexString(kvp.Value)}\r\nAS N\'{kvp.Key}\'");

            var script = string.Join("\r\nGO\r\n", commands.ToArray());
            return script;
        }

        public string ScriptDrop()
        {
            return $"DROP ASSEMBLY [{Name}]";
        }
    }
}
