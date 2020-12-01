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
// osNpcSaveAppearance Script Example
//

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