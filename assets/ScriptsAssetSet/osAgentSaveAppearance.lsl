/*
key osAgentSaveAppearance(key agentId, string notecard)

key osAgentSaveAppearance(key agentId, string notecard, integer includeHuds)
Save an arbitrary avatar's appearance to a notecard in the prim's inventory. This includes body part data, clothing items and attachments. If a notecard with the same name already exists then it is replaced. The avatar must be present in the region when this function is invoked. The baked textures for the avatar (necessary to recreate appearance on the NPC) are saved permanently.

The first variant will include HUDs, the second variant allows control that. incluceHuds 1 (TRUE) will include 0(FALSE) will not
Threat Level 	VeryHigh
Permissions 	ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Notes
This function was added in 0.7.2-post-fixes, huds control added in 0.9.2 
*/

default
{
    state_entry()
    {
        llSay(0, "Script running");
    }
}