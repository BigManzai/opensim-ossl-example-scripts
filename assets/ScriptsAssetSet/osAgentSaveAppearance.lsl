/*
osAgentSaveAppearance(key agentId, string notecard, integer includeHuds)
No descriptions provided
Threat Level 	None
Permissions 	No permissions specified
Delay 	No function delay specified
Example(s)
*/

//
// osAgentSaveAppearance Script Example
// Author: djphil
//
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osAgentSaveAppearance usage.");
    }
 
    touch_start(integer number)
    {
        key toucher = llDetectedKey(0);
 
        if (llGetAgentSize(toucher) != ZERO_VECTOR)
        {
            key result = osAgentSaveAppearance(toucher, (string)toucher);
 
            if (result && result != NULL_KEY)
            {
                llSay(PUBLIC_CHANNEL, "Notecard \"" + (string)toucher + "\" saved with success.");
            }
 
            else
            {
                llSay(PUBLIC_CHANNEL, "Notecard \"" + (string)toucher + "\" saved without success.");
            }
        }
 
        else
        {
            llInstantMessage(toucher, "You need to be in the same region to use this function ...");
        }
    }
}

/* And with "includeHuds"

//
// osAgentSaveAppearance (with option) Script Example
// Author: djphil
//
 
integer includeHuds = TRUE;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osAgentSaveAppearance (with option) usage.");
    }
 
    touch_start(integer number)
    {
        key toucher = llDetectedKey(0);
 
        if (llGetAgentSize(toucher) != ZERO_VECTOR)
        {
            key result;
 
            if (includeHuds == TRUE)
            {
                result = osAgentSaveAppearance(toucher, (string)toucher, TRUE);
            }
 
            else
            {
                result = osAgentSaveAppearance(toucher, (string)toucher, FALSE);
            }
 
            if (result && result != NULL_KEY)
            {
                llSay(PUBLIC_CHANNEL, "Notecard \"" + (string)toucher + "\" saved with success.");
            }
 
            else
            {
                llSay(PUBLIC_CHANNEL, "Notecard \"" + (string)toucher + "\" saved without success.");
            }
        }
 
        else
        {
            llInstantMessage(toucher, "You need to be in the same region to use this function ...");
        }
    }
}
*/