/*
osNpcSetProfileAbout(key npc, string about)
Set about in created NPC's profile.

See also OsNpcSetProfileImage.
Threat Level 	Low
Permissions 	${OSSL|osslNPC}
Delay 	0 seconds
Example(s) 
*/

//
// osNpcSetProfileImageScript Example
// Author: djphil
//
 
key npc = NULL_KEY;
string about = "I'm your Clone";
 
default
{
    touch_start(integer number)
    {
        if (npc == NULL_KEY)
        {
            osOwnerSaveAppearance("MyClone");
            llSetTimerEvent(2.0);
        }
 
        else
        {
            osNpcRemove(npc);
            npc = NULL_KEY;
            llRemoveInventory("MyClone");
        }
    }
 
    timer()
    {
        llSetTimerEvent(0.0);
        npc = osNpcCreate("John", "Smith", llGetPos() + <0.0, 0.0, 2.0>, "MyClone");
        osNpcSetProfileAbout(npc, about);
    }
}