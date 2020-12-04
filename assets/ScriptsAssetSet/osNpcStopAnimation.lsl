/*
osNpcStopAnimation(key npc, string animation)
Stops an animation that is being played by the NPC identified by their key.
Threat Level 	High
Permissions 	${OSSL|osslNPC}
Delay 	0 seconds
Example(s)
*/

//
// osNpcStopAnimation Script Exemple
// Author: djphil
//
 
string animation = "sit_ground";
integer ani;
key npc;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osNpcStopAnimation usage.");
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
 
        if (ani == TRUE)
        {
            osNpcSay(npc, "Goodbye!");
            llSetTimerEvent(0.0);
            osNpcStand(npc);
            osNpcRemove(npc);
            npc = NULL_KEY;
            ani = FALSE;
            state default;
        }
 
        else
        {
            ani = TRUE;
            osNpcPlayAnimation(npc, animation);
            osNpcSay(npc, "Hello world!");
        }
    }
 
    touch_start(integer number)
    {
        osNpcStopAnimation(npc, animation);
        llSetTimerEvent(3.0);
    }
}