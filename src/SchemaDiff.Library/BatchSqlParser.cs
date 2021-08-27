using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

namespace SchemaDiff.Library
{
    internal enum State
    {
        Searching,
        InOneLineComment,
        InMultiLineComment,
        InBrackets,
        InQuotes,
        InDoubleQuotes
    }

    public class BatchSqlParser
    {
        private static bool IsWhitespace(char c)
        {
            return Regex.Match(c.ToString(), "\\s", RegexOptions.Multiline).Success;
        }

        private static bool IsOneLineComment(char c0, char c1)
        {
            return c0 == '-' && c1 == '-';
        }

        private static bool IsMultiLineComment(char c0, char c1)
        {
            return c0 == '/' && c1 == '*';
        }

        private static bool IsEndMultiLineComment(char c0, char c1)
        {
            return c0 == '*' && c1 == '/';
        }

        private static bool IsGo(char p3, char p2, char p, char c, char n, char n2)
        {
            /* valid GO is preceded by whitespace or the end of a multi-line
			 * comment, and followed by whitespace or the beginning of a single
			 * line or multi line comment. */
            if (char.ToUpper(p) != 'G' || char.ToUpper(c) != 'O') return false;
            if (!IsWhitespace(p2) && !IsEndMultiLineComment(p3, p2)) return false;
            return IsWhitespace(n) || IsOneLineComment(n, n2) || IsMultiLineComment(n, n2);
        }

        public static string[] SplitBatch(string batchSql)
        {
            var scripts = new List<string>();
            var state = State.Searching;
            var foundGo = false;
            var commentDepth = 0;
            // previous 3, current, & next 2 chars
            var scriptStartIndex = 0;

            for (var i = 0; i < batchSql.Length; i++)
            {
                // previous 3, current, & next 2 chars
                // out of bounds chars are treated as whitespace
                var p3 = i > 2 ? batchSql[i - 3] : ' ';
                var p2 = i > 1 ? batchSql[i - 2] : ' ';
                var p = i > 0 ? batchSql[i - 1] : ' ';
                var c = batchSql[i];
                var n = batchSql.Length > i + 1 ? batchSql[i + 1] : ' ';
                var n2 = batchSql.Length > i + 2 ? batchSql[i + 2] : ' ';

                switch (state)
                {
                    case State.Searching:
                        if (IsMultiLineComment(p, c)) state = State.InMultiLineComment;
                        else if (IsOneLineComment(p, c)) state = State.InOneLineComment;
                        else
                            switch (c)
                            {
                                case '[':
                                    state = State.InBrackets;
                                    break;
                                case '\'':
                                    state = State.InQuotes;
                                    break;
                                case '\"':
                                    state = State.InDoubleQuotes;
                                    break;
                                default:
                                    {
                                        if (IsGo(p3, p2, p, c, n, n2)) foundGo = true;
                                        break;
                                    }
                            }

                        break;

                    case State.InOneLineComment:
                        if (c == '\n') state = State.Searching;
                        break;

                    case State.InMultiLineComment:
                        if (IsEndMultiLineComment(p, c)) commentDepth--;
                        else if (IsMultiLineComment(p, c)) commentDepth++;
                        if (commentDepth < 0)
                        {
                            commentDepth = 0;
                            state = State.Searching;
                        }

                        break;

                    case State.InBrackets:
                        if (c == ']') state = State.Searching;
                        break;

                    case State.InQuotes:
                        if (c == '\'') state = State.Searching;
                        break;

                    case State.InDoubleQuotes:
                        if (c == '\"') state = State.Searching;
                        break;
                    default:
                        throw new ArgumentOutOfRangeException();
                }

                if (foundGo)
                {
                    // store the current script and continue searching
                    // set length -1 so 'G' is not included in the script
                    var length = i - scriptStartIndex - 1;
                    scripts.Add(batchSql.Substring(scriptStartIndex, length));
                    // start the next script after the 'O' in "GO"
                    scriptStartIndex = i + 1;
                    foundGo = false;
                }
                else if (i == batchSql.Length - 1)
                {
                    // end of batch
                    // set lenght +1 to include the current char
                    var length = i - scriptStartIndex + 1;
                    scripts.Add(batchSql.Substring(scriptStartIndex, length));
                }
            }

            // return scripts that contain non-whitespace
            return scripts.Where(s => Regex.Match(s, "\\S", RegexOptions.Multiline).Success)
                .ToArray();
        }
    }
}
