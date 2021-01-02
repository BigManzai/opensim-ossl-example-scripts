/*
string osSHA256(string input)
Generate a hash value (string input). Returns a string containing the calculated string input as lowercase.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
// osSHA256 Script Example
// Author: djphil
//
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osSHA256 usage.");
    }
 
    touch_start(integer number)
    {
        string input = "OpenSimulator";
        llSay(PUBLIC_CHANNEL, "The sha256 value of input \"" + input + "\" is:\n" + osSHA256(input));
    }
}