/*
key osOwnerSaveAppearance(string notecard)

key osOwnerSaveAppearance(string notecard, integer includeHuds)
Save the owner's current appearance to a notecard in the prim's inventory. This includes body part data, clothing items and attachments. If a notecard with the same name already exists then it is replaced. The owner must be present in the region when this function is invoked. The baked textures for the owner (necessary to recreate appearance on the NPC) are saved permanently.

The first variant will include HUDs, the second variant allows control that. incluceHuds 1 (TRUE) will include 0(FALSE) will not
Threat Level 	High
Permissions 	${OSSL|osslParcelO}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

// 
// osOwnerSaveAppearance exxample.
// This example creates the notecard with the user's appearance in the inventory of a prim.
// You will find the notecard in the contents of the prim after the script has run.
//
 
default
{
    state_entry()
    {
        string ownername = llKey2Name(llGetOwner());    // Retrieve the owner's key, and find out his/her name.
        string date = (string)llGetDate();              // Store the date in a string.
        string notecard_name = ownername+" "+date;      // Combine the name and the date for use as a notecard name.
        osOwnerSaveAppearance(notecard_name);           // Make the notecard.
    }
}