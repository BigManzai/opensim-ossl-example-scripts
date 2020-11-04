/*
key osNpcCreate(string firstname, string lastname, vector position, string cloneFrom)

key osNpcCreate(string firstname, string lastname, vector position, string cloneFrom, integer options)

Creates an NPC named firstname lastname at position from avatar appearance resource cloneFrom 

Threat Level 	High
Permissions 	${OSSL|osslNPC}
Delay 	0 seconds
Example(s)
*/

// touch to create a NPC clone of the toucher in front of this emitter
// NPC will move to the toucher, then will greet them.
// Touch again to remove the NPC
 
key npc;
vector toucherPos;
 
default
{
    touch_start(integer number)
    {
        vector npcPos = llGetPos() + <1,0,0>;
        osAgentSaveAppearance(llDetectedKey(0), "appearance");
        // coud use avatar UUID directly in osNpcCreate, but then NPC appearance is not persisted
        npc = osNpcCreate("ImYour", "Clone", npcPos, "appearance");
        toucherPos = llDetectedPos(0);
        state hasNPC;
    }
}
 
state hasNPC
{
    state_entry()
    {
        osNpcMoveTo(npc, toucherPos + <3,0,0>); 
        osNpcSay(npc, "Hi there! My name is " + llKey2Name(npc));
    }
 
    touch_start(integer number)
    {
        osNpcSay(npc, "Goodbye!");
        osNpcRemove(npc);
        npc = NULL_KEY;
        state default;
    }
}