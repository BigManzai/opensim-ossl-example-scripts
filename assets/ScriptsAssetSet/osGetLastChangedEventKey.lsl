/*
key osGetLastChangedEventKey()
Returns id(key) parameter of some changed events. Currently only works with CHANGED_ALLOWED_DROP, being the id of the dropped item. Returns empty key ("") if none found.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
// osGetLastChangedEventKey Script Example
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