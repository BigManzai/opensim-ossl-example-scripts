/*
osDie(key objectID)
Deletes an object depending on the target uuid.
Threat Level 	Low
Permissions 	${OSSL|osslParcelOG}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

//
// osDie Script Example
// Author: djphil
//
 
key objectID;
integer switch;
 
default
{
    state_entry()
    {
        if (llGetInventoryNumber(INVENTORY_OBJECT))
        {
            llSay(PUBLIC_CHANNEL, "Touch to see osDie usage.");
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "Inventory object missing ...");
        }
    }
 
    touch_start(integer number)
    {
        if (switch =! switch)
        {
            llRezObject("Object", llGetPos() + <0.0, 0.0, 1.0>, ZERO_VECTOR, ZERO_ROTATION, 0);
        }
 
        else
        {
            osDie(objectID);
        }
    }
 
    object_rez(key uuid)
    {
        objectID = uuid;
    }
}