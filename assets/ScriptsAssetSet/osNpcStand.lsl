/*
osNpcStand(key npc)

    Makes a sitting NPC stand up. 

Threat Level 	High
Permissions 	${OSSL|osslNPC}
Delay 	0 seconds
Example(s)
*/

//
// osNpcStand Script Exemple
// Authior: djphil
//
 
key npc;
integer sit;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osNpcStand usage.");
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
 
        if (sit == TRUE)
        {
            osNpcSay(npc, "Goodbye!");
            llSetTimerEvent(0.0);
            osNpcStand(npc);
            osNpcRemove(npc);
            npc = NULL_KEY;
            sit = FALSE;
            state default;
        }
 
        else
        {
            sit = TRUE;
            osNpcSit(npc, llGetKey(), OS_NPC_SIT_NOW);
            osNpcSay(npc, "Hello world!");
        }
    }
 
    touch_start(integer number)
    {
        osNpcStand(npc);
        llSetTimerEvent(3.0);
    }
}