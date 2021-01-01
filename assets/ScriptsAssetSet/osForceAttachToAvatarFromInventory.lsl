/*
osForceAttachToAvatarFromInventory(string itemName, integer attachmentPoint)
Attach an inventory item in the object containing this script to the script owner without asking for PERMISSION_ATTACH. Nothing happens if the avatar is not in the region.

    itemName - The name of the item. If this is not found then a warning is said to the owner.
    attachmentPoint - The attachment point. For example, ATTACH_CHEST. 

Threat Level 	High
Permissions 	${OSSL|osslParcelO}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

//
// osForceAttachToAvatarFromInventory Script Example (YEngine)
// Author: djphil
//
 
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
 
        else
        {
            llSay(PUBLIC_CHANNEL, "Touch to see osForceAttachToAvatarFromInventory attach the object " + ObjectName + " to your avatar's left hand.");
        }
    }
 
    touch_start(integer number)
    {
        osForceAttachToAvatarFromInventory(ObjectName, ATTACH_LHAND);
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