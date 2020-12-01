/*
key osGetInventoryLastOwner(string itemName_or_itemId)
Returns the id(key) of the last owner of inventory item with id "itemName_or_itemId" if that parameter is a valid key or with that name if not.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
// empty Script Example
//

default
{
 
//...
    changed(integer ch)
    {
        if (ch & CHANGED_ALLOWED_DROP)
        {
            key id = osGetLastChangedEventKey();
            if(id != "")
            {
                llSay(0,"got inventory dropped item "+(string)id);
                llSay(0,"name " + osGetInventoryName(id));
                llSay(0,"desc " + osGetInventoryDesc(id));
                key who = osGetInventoryLastOwner(id);
                llSay(0,"dropped by " + llKey2Name(who) +" ("+(string)who +")"); 
            }
        }
//...
}