/*
key osNpcSaveAppearance(key npc, string notecard)

key osNpcSaveAppearance(key npc, string notecard, integer includeHuds)
Save the NPC's current appearance to a notecard in the prim's inventory. This includes body part data, clothing items and attachments. If a notecard with the same name already exists then it is replaced. The avatar must be present in the region when this function is invoked. The baked textures for the avatar (necessary to recreate appearance) are saved permanently.

first variant will include huds on the save appearence. Second variant alloes control of that. incluceHuds 1 (TRUE) will include 0(FALSE) will not
Threat Level 	High
Permissions 	${OSSL|osslNPC}
Delay 	0 seconds
Notes
This function was added in 0.7.2-post-fixes, huds control added in 0.9.2.0 
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
            string FullName = llDetectedName(0);
            list buffer = llParseString2List(FullName, " ", []);
            string FirstName = llList2String(buffer, 0);
            string LastName = llList2String(buffer, 1);
            string NotecardName = FirstName + " " + LastName + " " + llGetTimestamp();
            llSay(PUBLIC_CHANNEL, "Attempting to create an Notecard \"" + NotecardName + "\".");
 
            key result = osAgentSaveAppearance(toucher, NotecardName);
 
            if (result && result != NULL_KEY)
            {
                llSay(PUBLIC_CHANNEL, "Notecard \"" + NotecardName + "\" created with success.");
            }
 
            else
            {
                llSay(PUBLIC_CHANNEL, "Notecard \"" + NotecardName + "\" created without success.");
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
            string FullName = llDetectedName(0);
            list buffer = llParseString2List(FullName, " ", []);
            string FirstName = llList2String(buffer, 0);
            string LastName = llList2String(buffer, 1);
            string NotecardName = FirstName + " " + LastName + " " + llGetTimestamp();
            llSay(PUBLIC_CHANNEL, "Attempting to create an Notecard \"" + NotecardName + "\".");
 
            key result;
 
            if (includeHuds == TRUE)
            {
                result = osAgentSaveAppearance(toucher, NotecardName, TRUE);
            }
 
            else
            {
                result = osAgentSaveAppearance(toucher, NotecardName, FALSE);
            }
 
            if (result && result != NULL_KEY)
            {
                llSay(PUBLIC_CHANNEL, "Notecard \"" + NotecardName + "\" created with success.");
            }
 
            else
            {
                llSay(PUBLIC_CHANNEL, "Notecard \"" + NotecardName + "\" created without success.");
            }
        }
 
        else
        {
            llInstantMessage(toucher, "You need to be in the same region to use this function ...");
        }
    }
}
*/