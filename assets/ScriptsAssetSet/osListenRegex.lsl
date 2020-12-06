/*
integer osListenRegex(integer channelID, string name, key ID, string msg, integer regexBitfield)
Allows the server to filter listen events by regular expressions. name or message parameters can be regular expressions, these are behaviours are controlled via the regexBitField parameter using the constants OS_LISTEN_REGEX_NAME and OS_LISTEN_REGEX_MESSAGE.

If the regex strings are invalid, an error will be shouted on the debug channel.
Threat Level 	Low
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Notes
This function was added in 0.7.5-post-fixes 
*/

//
// osListenRegex Script Example
//

string NPCNAME="INVALID";
integer zListener=-1;

InitListener()
{

    key id = llGetOwner();
    if (id)
    {
        string name= llKey2Name(llGetOwner());
        NPCNAME = llGetSubString(name, 0, llSubStringIndex(name, " ") - 1);
        if (zListener <0)
        {
            zListener = osListenRegex(0, "", "", "^(?i)(hi|hello|"+NPCNAME+" )(?-i)", OS_LISTEN_REGEX_MESSAGE);
            llOwnerSay("Listening for '"+NPCNAME+"'");
        }
    }
}


default
{
    state_entry()
    {
        llSay( 0, "I am Alive!");
    }

    touch_start(integer number_of_touchs)
    {
        llSay( 0, "Touched.");
        InitListener();
    }
}