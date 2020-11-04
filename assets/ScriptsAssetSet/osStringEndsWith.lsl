/*
integer osStringEndsWith(string src, string start, integer ignore_case)
Returns 1 if the string in src ends with the characters in start. Case is ignored if ignore_case is 1 otherwise the case of the characters matters.
Threat Level 	None
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

// Example use of osStringEndsWith
 
do_test(string s, string start, integer ignore_case)
{
    integer found;
    string  result = "";
 
    found = osStringEndsWith(s, start, ignore_case);
    if (found != 0)
        result = "string " + s + " ends with " + start;
    else
        result = "string " + s + " does not end with " + start;
    if (ignore_case)
        result += " (ignoring case)";
    llOwnerSay(result);
}
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch me to see examples of osStringEndsWith");
    }
 
    touch_start(integer n)
    {
        string src = "abcdef";
 
        do_test(src, "ef", 0);
        do_test(src, "EF", 0);
        do_test(src, "EF", 1);
        do_test(src, "ab", 1);
        do_test(src, "cef", 0);
    }
}