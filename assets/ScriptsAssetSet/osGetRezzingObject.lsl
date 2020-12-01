/*
key osGetRezzingObject()
Get the key of the object that rezzed this object.

Will return NULL_KEY if rezzed by agent or otherwise unknown source. Should only be reliable inside the on_rez event.
Threat Level 	None
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
// osGetRezzingObject Script Example
// Author: djphil
//
 
default
{
    on_rez(integer param)
    {
        key objectID = osGetRezzingObject();
 
        if (objectID == NULL_KEY)
        {
            llSay(PUBLIC_CHANNEL, "I was rezzed by agent or otherwise unknown source.");
            llSay(PUBLIC_CHANNEL, "My rezzing object uuid is: " + objectID);
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "I was rezzed by an object rezzer.");
            llSay(PUBLIC_CHANNEL, "My rezzing object uuid is: " + objectID);
            llSay(PUBLIC_CHANNEL, "My rezzing object name is: " + llKey2Name(objectID));
        }
    }
}