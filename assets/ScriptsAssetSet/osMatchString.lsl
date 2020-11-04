/*
list osMatchString(string src, string pattern, integer start)
This function returns a list containing the matches from the given string.
Threat Level 	High
Permissions 	No permissions specified
Delay 	No function delay specified
Example(s)
*/


//
// Example of osMatchString
//
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch me to show Matched Strings");
    }
 
    touch_end(integer total_number)
    {
        string sSentence = "today we do this all day long and all night long";
        list lMatches = [];
        lMatches = osMatchString(sSentence, "all", 0);
        llSay(0,"Matched String :\n"+llDumpList2String(lMatches, " @ "));  
    }
}