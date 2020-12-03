/*
key osGetInventoryLastOwner(string itemName_or_itemId)
Returns the id(key) of the last owner of inventory item with id "itemName_or_itemId" if that parameter is a valid key or with that name if not.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
// osGetInventoryLastOwner Script Exemple
// Author: Ubit
//
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Drop a item to this primitive's inventory to see osGetInventoryLastOwner usage.");
        llAllowInventoryDrop(TRUE);
    }
 
    changed(integer change)
    {
        if (change & CHANGED_INVENTORY)         
        {
            llSay(PUBLIC_CHANNEL, "The inventory has changed ...");
        }
 
        if (change & CHANGED_ALLOWED_DROP)
        {
            llSay(PUBLIC_CHANNEL, "An item has been dropped in this primitive's inventory");
 
            key id = osGetLastChangedEventKey();
 
            if (id != "")
            {
                key who = osGetInventoryLastOwner(id);
                llSay(PUBLIC_CHANNEL, "I got inventory dropped item " + (string)id);
                llSay(PUBLIC_CHANNEL, "Item dropped by "+ (string)who + " (" + llKey2Name(who) + ")");
                llSay(PUBLIC_CHANNEL, "The item name is " + osGetInventoryName(id));
                llSay(PUBLIC_CHANNEL, "The item description is " + osGetInventoryDesc(id));
            }
 
            else
            {
                llSay(PUBLIC_CHANNEL, "This item id is empty ...");
            }
        }
    }
}