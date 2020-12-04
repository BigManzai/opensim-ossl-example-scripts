/*
osNpcStopMoveToTarget(key npc)
Stop a current move to a target.
Threat Level 	High
Permissions 	${OSSL|osslNPC}
Delay 	0 seconds
Notes
This function was added in 0.7.2-post-fixes 
*/

//
// osNpcStopMoveToTarget Script Exemple
// Author: djphil
//
 
key npc;
integer move;
integer step;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osNpcStopMoveToTarget usage.");
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
        if (move == TRUE)
        {
            osNpcStopMoveToTarget(npc);
            llSetTimerEvent(3.0);
            move = FALSE;
        }
 
        else
        {
            if (step == FALSE)
            {
                osNpcSay(npc, "Hello world!");
                step = TRUE;
            }
 
            osNpcMoveToTarget(npc, llGetPos() + <5.0, -1.0, 0.0>, OS_NPC_NO_FLY);
            llSetTimerEvent(1.0);
            move = TRUE;
        }
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