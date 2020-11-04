/*
string osStringReplace(string src, string oldvalue, string newvalue)
Returns a string in which all occurrences of the string oldvalue in string src are replaced by string newvalue
Threat Level 	No threat level specified
Permissions 	Use of this function is always allowed by default
Delay 	No function delay specified
Example(s)
*/

// Example of osStringReplace
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch me to show osStringReplace");
    }
 
    touch_start(integer n)
    {
        string src = "abcdefdedhdekef";
        string val = "de";
        string nval = "";
        llOwnerSay((string)osStringReplace(src, val, nval));
    }
}