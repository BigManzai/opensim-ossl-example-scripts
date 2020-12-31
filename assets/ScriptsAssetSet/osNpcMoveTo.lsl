/*
osNpcMoveTo(key npc, vector position)

    Moves npc to the position. 

Threat Level 	High
Permissions 	${OSSL|osslNPC}
Delay 	0 seconds
Example(s)
*/

//
// osNpcMoveTo Script Example
// Author: djphil
//
 
key npc;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osNpcMoveTo usage.");
    }
 
    touch_start(integer number)
    {
        key toucher = llDetectedKey(0);
        vector npcPos = llGetPos() + <-5.0, -1.0, 1.0>;
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
        osNpcMoveTo(npc, llGetPos() + <5.0, -1.0, 0.0>);
    }
 
    touch_start(integer number)
    {
        llSetTimerEvent(0.0);
        osNpcSay(npc, "Goodbye!");
        osNpcRemove(npc);
        npc = NULL_KEY;
        state default;
    }
}