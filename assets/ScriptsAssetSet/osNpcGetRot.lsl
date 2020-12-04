/*
rotation osNpcGetRot(key npc)
Gets the rotation of the avatar. Only the rotation around the Z plane in Euler rotation (horizontal rotation) has any meaning.
Threat Level 	High
Permissions 	${OSSL|osslNPC}
Delay 	0 seconds
Notes
This function was added in 0.7.2-post-fixes 
*/

//
// osNpcGetRot Script Exemple
// Author: djphil
//
 
key npc;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osNpcGetRot usage.");
    }
 
    touch_start(integer number)
    {
        key toucher = llDetectedKey(0);
        vector npcPos = llGetPos() + <1.0, 0.0, 1.0>;
        osAgentSaveAppearance(toucher, "appearance");
        npc = osNpcCreate("ImYour", "Clone", npcPos, "appearance");
        state hasNPC;
    }
}
 
state hasNPC
{
    state_entry()
    {
        llSetTimerEvent(5.0);
    }
 
    timer()
    {
        llSetTimerEvent(0.0);
        osNpcSay(npc, "Hello world!");
        osNpcSay(npc, "My current rotation is: " + (string)osNpcGetRot(npc));
    }
 
    touch_start(integer number)
    {
        osNpcSay(npc, "Goodbye!");
        llSetTimerEvent(0.0);
        osNpcRemove(npc);
        npc = NULL_KEY;
        state default;
    }
}