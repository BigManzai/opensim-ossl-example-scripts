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
// Author: djphil
//
 
integer channelID = PUBLIC_CHANNEL;
integer handler;
integer swith;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osListenRegex usage.");
        llSay(PUBLIC_CHANNEL, "This with the use of the Regex Bitfield OS_LISTEN_REGEX_NAME.");
        llSetText("[OFF]", <1.0, 1.0, 1.0>, 1.0);
    }
 
    touch_start(integer number)
    {
        if (swith = !swith)
        {
            string name = llDetectedName(0);
            handler = osListenRegex(channelID, name, NULL_KEY, "", OS_LISTEN_REGEX_NAME);
            llSay(PUBLIC_CHANNEL, "The listen regex on channel " + (string)channelID + " is open.");
            llSay(PUBLIC_CHANNEL, "The regex name is " + (string)name);
            llSetText("[ON]", <1.0, 1.0, 1.0>, 1.0);
            llSetTimerEvent(30.0);
        }
 
        else
        {
            llSetTimerEvent(0.0);
            llListenRemove(handler);
            llSay(PUBLIC_CHANNEL, "The listen regex on channel " + (string)channelID + " is closed.");
            llSetText("[OFF]", <1.0, 1.0, 1.0>, 1.0);
        }
    }
 
    listen(integer channel, string name, key id, string message)
    {
        if (channel == channelID)
        {
            llSay(PUBLIC_CHANNEL, (string)channel + ") " + (string)id + " " + name + " " + message);
        }
    }
 
    timer()
    {
        swith = !swith;
        llSetTimerEvent(0.0);
        llListenRemove(handler);
        llSay(PUBLIC_CHANNEL, "The listen regex on channel " + (string)channelID + " is closed.");
        llSetText("[OFF]", <1.0, 1.0, 1.0>, 1.0);
    }
}

/* With OS_LISTEN_REGEX_MESSAGE: Filtering only the message

//
// osListenRegex Script Example
// Author: djphil
//
 
integer channelID = PUBLIC_CHANNEL;
integer handler;
integer swith;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osListenRegex usage.");
        llSay(PUBLIC_CHANNEL, "This with the use of the Regex Bitfield OS_LISTEN_REGEX_MESSAGE.");
        llSetText("[OFF]", <1.0, 1.0, 1.0>, 1.0);
    }
 
    touch_start(integer number)
    {
        if (swith = !swith)
        {
            string regex = "^(?i)(hi|hello|bonjour|ola)(?-i)";
            handler = osListenRegex(channelID, "", NULL_KEY, regex, OS_LISTEN_REGEX_MESSAGE);
            llSay(PUBLIC_CHANNEL, "The listen regex on channel " + (string)channelID + " is open.");
            llSay(PUBLIC_CHANNEL, "The regex message is " + (string)regex);
            llSetText("[ON]", <1.0, 1.0, 1.0>, 1.0);
            llSetTimerEvent(30.0);
        }
 
        else
        {
            llSetTimerEvent(0.0);
            llListenRemove(handler);
            llSay(PUBLIC_CHANNEL, "The listen regex on channel " + (string)channelID + " is closed.");
            llSetText("[OFF]", <1.0, 1.0, 1.0>, 1.0);
        }
    }
 
    listen(integer channel, string name, key id, string message)
    {
        if (channel == channelID)
        {
            llSay(PUBLIC_CHANNEL, (string)channel + ") " + (string)id + " " + name + " " + message);
        }
    }
 
    timer()
    {
        swith = !swith;
        llSetTimerEvent(0.0);
        llListenRemove(handler);
        llSay(PUBLIC_CHANNEL, "The listen regex on channel " + (string)channelID + " is closed.");
        llSetText("[OFF]", <1.0, 1.0, 1.0>, 1.0);
    }
}

With OS_LISTEN_REGEX_NAME and OS_LISTEN_REGEX_MESSAGE: Filtering the detected name and the message

//
// osListenRegex Script Example
// Author: djphil
//
 
integer channelID = PUBLIC_CHANNEL;
integer handler;
integer swith;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osListenRegex usage.");
        llSay(PUBLIC_CHANNEL, "This with the use of the Regex Bitfields OS_LISTEN_REGEX_NAME and OS_LISTEN_REGEX_MESSAGE.");
        llSetText("[OFF]", <1.0, 1.0, 1.0>, 1.0);
    }
 
    touch_start(integer number)
    {
        if (swith = !swith)
        {
            string name = llDetectedName(0);
            string regex = "^(?i)(hi|hello|bonjour|ola|"+name+")(?-i)";
            handler = osListenRegex(channelID, name, NULL_KEY, "", OS_LISTEN_REGEX_NAME | OS_LISTEN_REGEX_MESSAGE);
            llSay(PUBLIC_CHANNEL, "The listen regex on channel " + (string)channelID + " is open.");
            llSay(PUBLIC_CHANNEL, "The regex name is " + (string)name);
            llSay(PUBLIC_CHANNEL, "The regex message is " + (string)regex);
            llSetText("[ON]", <1.0, 1.0, 1.0>, 1.0);
            llSetTimerEvent(30.0);
        }
 
        else
        {
            llSetTimerEvent(0.0);
            llListenRemove(handler);
            llSay(PUBLIC_CHANNEL, "The listen regex on channel " + (string)channelID + " is closed.");
            llSetText("[OFF]", <1.0, 1.0, 1.0>, 1.0);
        }
    }
 
    listen(integer channel, string name, key id, string message)
    {
        if (channel == channelID)
        {
            llSay(PUBLIC_CHANNEL, (string)channel + ") " + (string)id + " " + name + " " + message);
        }
    }
 
    timer()
    {
        swith = !swith;
        llSetTimerEvent(0.0);
        llListenRemove(handler);
        llSay(PUBLIC_CHANNEL, "The listen regex on channel " + (string)channelID + " is closed.");
        llSetText("[OFF]", <1.0, 1.0, 1.0>, 1.0);
    }
}
*/