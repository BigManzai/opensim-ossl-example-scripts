/*
key osGetLastChangedEventKey()
Returns id(key) parameter of some changed events. Currently only works with CHANGED_ALLOWED_DROP, being the id of the dropped item. Returns empty key ("") if none found.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
// osGetLastChangedEventKey Script Exemple
// Author: Ubit
//
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Drop a item to this primitive's inventory to see osGetLastChangedEventKey usage.");
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