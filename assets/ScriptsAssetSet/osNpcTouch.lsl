/*
osNpcTouch(key npcKey, key objectKey, integer linkNum)
Only LINK_THIS and LINK_ROOT are valid for this function. Any other of the LINK_* constants will be ignored and no touch takes place.

1. If linkNum is LINK_THIS then the prim with the key objectKey will be touched.

2. If linkNum is LINK_ROOT or 0 then the root prim of the link set will be touched, even if the root prim key is not objectKey

3. For any other value of linkNum a search will be made through the linkset for a prim with that link number. If found that prim will be touched. If no prim is found for that link number the function fails silently and no touch takes place.

The touch is fired as if it came from an old client that does not support face touch detection or (probably) one of the text clients like Metabolt. Since there is no mouse the llDetectedTouch* functions will return the defaults (See the LSL Wiki for full details)

llDetectedTouchBinormal TOUCH_INVALID_VECTOR
llDetectedTouchFace TOUCH_INVALID_FACE
llDetectedTouchNormal TOUCH_INVALID_VECTOR
llDetectedTouchPos TOUCH_INVALID_VECTOR
llDetectedTouchST TOUCH_INVALID_TEXCOORD
llDetectedTouchUV TOUCH_INVALID_TEXCOORD

If the prim is not found or would not allow a normal client to touch it then this function fails silently.
Threat Level 	High
Permissions 	${OSSL|osslNPC}
Delay 	0 seconds
Example(s)
*/

//
// osNpcTouch Script Exemple
// Author: djphil
//
 
key npc;
integer nbr;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osNpcTouch usage.");
    }
 
    touch_start(integer number)
    {
        key toucher = llDetectedKey(0);
        vector npcPos = llGetPos() + <-1.0, 0.0, 1.0>;
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
        if (++nbr == 1) osNpcSay(npc, "Hello world!");
        llSetTimerEvent(2.0);
        osNpcTouch(npc, llGetKey(), LINK_THIS);
    }
 
    touch_start(integer number)
    {
        if (osIsNpc(llDetectedKey(0)))
        {
            llSetColor(<llFrand(1.0), llFrand(1.0), llFrand(1.0)>, ALL_SIDES);
        }
 
        else
        {
            llSetColor(<1.0, 1.0, 1.0>, ALL_SIDES);
            osNpcSay(npc, "Goodbye!");
            llSetTimerEvent(0.0);
            osNpcRemove(npc);
            npc = NULL_KEY;
            nbr = 0;
            state default;
        }
    }
}