/*
osNpcSetProfileImage(key npc, string image)
Set image in created NPC's profile.

One can use UUID of the texture or name of texture included in prim's inventory.

See also OsNpcSetProfileAbout.
Threat Level 	Low
Permissions 	${OSSL|osslNPC}
Delay 	No function delay specified
Example(s) 
*/

//
// osNpcSetProfileImage Example
// Author: djphil
//
 
key npc = NULL_KEY;
string image = "My Photo";
 
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
        osNpcSetProfileImage(npc, image);
    }
}