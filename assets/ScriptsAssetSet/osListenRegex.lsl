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
// empty Script Example
//

default
{
    state_entry()
    {
        llSay(0, "This script example does not yet exist.");
    }
}