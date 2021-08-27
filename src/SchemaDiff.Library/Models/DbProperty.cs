namespace SchemaDiff.Library.Models
{
    public class DbProperty
    {
        public DbProperty(string name, string value)
        {
            Name = name;
            Value = value;
        }

        public string Name { get; set; }
        public string Value { get; set; }

        public string Script()
        {
            return Name.ToUpper() switch
            {
                "COLLATE" => string.IsNullOrEmpty(Value)
                    ? string.Empty
                    : $"EXEC('ALTER DATABASE [' + @DB + '] COLLATE {Value}')",
                "COMPATIBILITY_LEVEL" => string.IsNullOrEmpty(Value)
                    ? string.Empty
                    : $"EXEC dbo.sp_dbcmptlevel @DB, {Value}",
                _ => string.IsNullOrEmpty(Value)
                    ? string.Empty
                    : $"EXEC('ALTER DATABASE [' + @DB + '] SET {Name} {Value}')"
            };
        }
    }
}
