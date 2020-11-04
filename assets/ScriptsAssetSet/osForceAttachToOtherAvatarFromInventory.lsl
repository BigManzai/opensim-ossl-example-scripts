/*
osForceAttachToOtherAvatarFromInventory(string rawAvatarId, string itemName, integer attachmentPoint)
Attach an inventory item in the object containing this script to any avatar in the region without asking for PERMISSION_ATTACH. Nothing happens if the avatar is not in the region.

    rawAvatarId - The UUID of the avatar to which to attach. Nothing happens if this is not a UUID.
    itemName - The name of the item. If this is not found then a warning is said to the owner.
    attachmentPoint - The attachment point. For example, ATTACH_CHEST. 

In OpenSimulator 0.7.4.
Threat Level 	VeryHigh
Permissions 	Use of this function is always disabled by default
Delay 	0 seconds
Example(s)
*/

//Author: mewtwo0641
//Simple example for osForceAttachToOtherAvatarFromInventory that attaches a list of items on touch
 
//List of items in object inventory to be attached in format: item_name, attach_point
list items =
[
	"Belt", (string)ATTACH_BELLY,
	"Hat", (string)ATTACH_HEAD,
        "Left Shoe", (string)ATTACH_LFOOT,
        "Right Shoe", (string)ATTACH_RFOOT
];
 
key toucher;
 
default
{
    touch_start(integer x)
    {
        toucher = llDetectedKey(0);
 
        integer i = 0;
 
        for(i; i < llGetListLength(items); i++)
        {  
            string name = llList2String(items, i);      
            integer point = (integer)llList2String(items, i + 1);            
            osForceAttachToOtherAvatarFromInventory(toucher, name, point);
            i++;
        }
    }
}