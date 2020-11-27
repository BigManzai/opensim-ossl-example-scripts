/*
integer osRegexIsMatch(string input, string pattern)
Returns 1 if the input string matches the regular expression pattern. Wraps to Regex.IsMatch()
Threat Level 	Low
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
// osRegexIsMatch Script Example
// Author: djphil
//
 
string check_string(string input, string pattern)
{
    if (osRegexIsMatch(input, pattern))
    {
        return "The input string \"" + input + "\" matches with the regular expression pattern \"" + pattern + "\"";
    }
 
    else
    {
        return "The Input string \"" + input + "\" do not matches with the regular expression pattern \"" + pattern + "\"";
    }
}
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osRegexIsMatch usage.");
    }
 
    touch_start(integer number)
    {
        // Check lowercase from a to z
        llSay(PUBLIC_CHANNEL, check_string("abcdef", "[a-z]"));
        llSay(PUBLIC_CHANNEL, check_string("ABCDEF", "[a-z]"));
        llSay(PUBLIC_CHANNEL, check_string("123456", "[a-z]"));
 
        // Check uppercase from A to Z
        llSay(PUBLIC_CHANNEL, check_string("abcdef", "[A-Z]"));
        llSay(PUBLIC_CHANNEL, check_string("ABCDEF", "[A-Z]"));
        llSay(PUBLIC_CHANNEL, check_string("123456", "[A-Z]"));
 
        // Check numbers from 0 to 9
        llSay(PUBLIC_CHANNEL, check_string("abcdef", "[0-9]"));
        llSay(PUBLIC_CHANNEL, check_string("ABCDEF", "[0-9]"));
        llSay(PUBLIC_CHANNEL, check_string("123456", "[0-9]"));
    }
}