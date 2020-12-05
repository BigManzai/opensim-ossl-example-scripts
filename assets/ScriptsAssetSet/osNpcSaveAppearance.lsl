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
// osNpcSaveAppearance Script Exemple
// Author: djphil
//
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Collide a NPC with this primitive to see osNpcSaveAppearance usage.");
    }
 
    collision_start(integer number)
    {
        key collider = llDetectedKey(0);
 
        if (osIsNpc(collider))
        {
            key result = osNpcSaveAppearance(collider, (string)collider);
 
            if (result && result != NULL_KEY)
            {
                osNpcSay(collider, "Notecard \"" + (string)collider + "\" saved with success.");
            }
 
            else
            {
                osNpcSay(collider, "Notecard \"" + (string)collider + "\" saved without success.");
            }
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "Only NPC's can collide with me and save their appearance in a notecard ...");
        }
    }
}

/* And with "includeHuds"

//
// osNpcSaveAppearance Script Exemple
// Author: djphil
//
 
integer includeHuds = TRUE;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Collide a NPC with this primitive to see osNpcSaveAppearance usage.");
    }
 
    collision_start(integer number)
    {
        key collider = llDetectedKey(0);
 
        if (osIsNpc(collider))
        {
            key result;
 
            if (includeHuds == TRUE)
            {
                result = osNpcSaveAppearance(collider, (string)collider, TRUE);
            }
 
            else
            {
                result = osNpcSaveAppearance(collider, (string)collider, FALSE);
            }
 
            if (result && result != NULL_KEY)
            {
                osNpcSay(collider, "Notecard \"" + (string)collider + "\" saved with success.");
            }
 
            else
            {
                osNpcSay(collider, "Notecard \"" + (string)collider + "\" saved without success.");
            }
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "Only NPC's can collide with me and save their appearance in a notecard ...");
        }
    }
}
*/