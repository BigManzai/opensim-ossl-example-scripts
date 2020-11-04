/*
string osStringSubString(string src, integer offset)

string osStringSubString(string src, integer offset, integer length)

Threat Level 	None
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

// Example of osStringSubString
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch me to show osStringSubString");
    }
 
    touch_start(integer n)
    {
        string src = "abcdef";
        string sub = osStringSubString(src, 1);
        llOwnerSay( "osStringSubString(src, 1) of \"" + src + "\" is \"" + sub + "\"");
        sub = osStringSubString(src, 1, 2);
        llOwnerSay( "osStringSubString(src, 1, 2) of \"" + src + "\" is \"" + sub + "\"");
    }
}