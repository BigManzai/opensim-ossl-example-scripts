/*
string osFormatString(string format,list params)
Return the string with parameters substituted into it. These parameters need to be incrementing numbers, starting at zero, and surrounded by single accolades (also known as curly brackets).
Threat Level 	Low
Permissions 	No permissions specified
Delay 	No function delay specified
Example(s)
*/


//
//osFormatString() example, by Tom Earth.
//
default
{
    state_entry()
    {
        string to_format = "My name is {0}. My owner is {1}. I am in the sim {2}";
        list format = [llGetObjectName(),llKey2Name(llGetOwner()),llGetRegionName()];
        llOwnerSay(osFormatString(to_format, format)); 
    }
}