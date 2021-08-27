namespace SchemaDiff.Library
{
    public static class StringUtils
    {
        /// <summary>
        ///     Adds a space to the beginning of a string.
        ///     If the string is null or empty it's returned as-is
        /// </summary>
        public static string AddSpaceIfNotEmpty(string value)
        {
            return string.IsNullOrEmpty(value) ? value : $" {value}";
        }

        /// <summary>
        ///     Extension methods to make sql script generators more readable.
        /// </summary>
        public static string Space(this string val)
        {
            return AddSpaceIfNotEmpty(val);
        }
    }
}
