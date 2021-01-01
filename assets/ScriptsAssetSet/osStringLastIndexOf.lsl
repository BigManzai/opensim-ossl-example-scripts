/*
integer osStringLastIndexOf(string src, string value, integer ignoreCase)
Reports the zero-based index of the last occurrence of string value within string scr. returns -1 if not found. It can compare ignoring case with ignoreCase TRUE(1) or considering case if FALSE(0);
Threat Level 	No threat level specified
Permissions 	Use of this function is always allowed by default
Delay 	No function delay specified
Example(s)
*/

// Example of osStringLastIndexOf
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch me to show osStringLastIndexOf");
    }
 
    touch_start(integer n)
    {
        string src = "abcdefDeg";
        string val = "DE";
        llOwnerSay((string)osStringLastIndexOf(src, val, TRUE));
    }
}