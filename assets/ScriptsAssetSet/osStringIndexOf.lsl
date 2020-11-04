/*
integer osStringIndexOf(string src, string value, integer ignoreCase)
Reports the zero-based index of the first occurrence of string value withing string scr. returns -1 if not found. It can compare ignoring case with ignoreCase TRUE(1) or considering case if FALSE(0);
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
        llSay(PUBLIC_CHANNEL, "Touch me to show osStringIndexOf");
    }
 
    touch_start(integer n)
    {
        string src = "abcdef";
        string val = "DE";
        llOwnerSay((string)osStringIndexOf(src, val, TRUE));
    }
}