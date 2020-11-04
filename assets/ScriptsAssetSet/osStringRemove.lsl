/*
string osStringRemove(string src, integer offset, integer count)

Threat Level 	No threat level specified
Permissions 	Use of this function is always allowed by default
Delay 	No function delay specified
Example(s)
*/

// Example of osStringRemove
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch me to show osStringRemove");
    }
 
    touch_start(integer n)
    {
        string src = "abcdef";
        string sub = osStringRemove(src, 0, 3);
        llOwnerSay("osStringRemove(src, 1, 3) of \"" + src + "\" is \"" + sub + "\"");
    }
}