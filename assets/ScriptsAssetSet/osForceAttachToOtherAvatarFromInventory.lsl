/*
osForceAttachToOtherAvatarFromInventory(string rawAvatarId, string itemName, integer attachmentPoint)
Attach an inventory item in the object containing this script to any avatar in the region without asking for PERMISSION_ATTACH. Nothing happens if the avatar is not in the region.

    rawAvatarId - The UUID of the avatar to which to attach. Nothing happens if this is not a UUID.
    itemName - The name of the item. If this is not found then a warning is said to the owner.
    attachmentPoint - The attachment point. For example, ATTACH_CHEST. 

Threat Level 	VeryHigh
Permissions 	Use of this function is always disabled by default
Delay 	0 seconds
Example(s)
*/

//
// osForceAttachToOtherAvatarFromInventory Script Exemple (YEngine)
// Author: djphil
//
 
string AvatarUuid = "<TARGET_AVATAR_UUID>";
string ObjectName;
 
default
{
    state_entry()
    {
        ObjectName = llGetInventoryName(INVENTORY_ALL, 0);
 
        if (ObjectName == "")
        {
            llSay(PUBLIC_CHANNEL, "Inventory object missing ...");
        }
 
        else if (AvatarUuid == "<USER_UUID_TO_EJECT>" || !osIsUUID(AvatarUuid))
        {
            llOwnerSay("Please replace <TARGET_AVATAR_UUID> with a valid user uuid");
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "Touch to see osForceAttachToOtherAvatarFromInventory attach the object to the target avatar's left hand.");
            llSay(PUBLIC_CHANNEL, "Object name is " + ObjectName + " and target avatar uuid is " + AvatarUuid + " (" + osKey2Name(AvatarUuid) + ")");
        }
    }
 
 
    touch_start(integer number)
    {
        osForceAttachToOtherAvatarFromInventory(AvatarUuid, ObjectName, ATTACH_LHAND);
    }
 
    // The attach event is called on both attach and detach.
    attach(key id)
    {
        // Test if is a valid key ('id' is only valid on attach)
        if (id)
        {
            llOwnerSay("The object " + ObjectName + " is attached to " + llKey2Name(id));
        }
 
        else 
        {
            llOwnerSay("The object is not attached!");
        }
    }
 
    on_rez(integer param)
    {
        // Reset the script if it's not attached.
        if (!llGetAttached())        
        {
            llResetScript();
        }
    }
}