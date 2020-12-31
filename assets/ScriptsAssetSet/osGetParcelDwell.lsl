/*
integer osGetParcelDwell(vector pos)
This function allows you to get parcel dwell.

Alternatively you can also use PARCEL_DETAILS_DWELL with the function llGetParcelDetails.
Threat Level 	This function does not do a threat level check is unknown threat level
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
// osGetParcelDwell Script Example
// Author: djphil
//
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osGetParcelDwell usage.");
    }
 
    touch_start(integer number)
    {
        vector position = llGetPos();
        list details = llGetParcelDetails(position, [PARCEL_DETAILS_NAME]);
        llSay(PUBLIC_CHANNEL, "Total dwell on parcel " + llList2String(details, 0) + " is " + osGetParcelDwell(position));
    }
}

/* And with PARCEL_DETAILS_DWELL

//
// PARCEL_DETAILS_DWELL Script Example
// Author: djphil
//
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see PARCEL_DETAILS_DWELL usage.");
    }
 
    touch_start(integer number)
    {
        list details = llGetParcelDetails(llGetPos(), [PARCEL_DETAILS_NAME, PARCEL_DETAILS_DWELL]);
        llSay(PUBLIC_CHANNEL, "Total dwell on parcel " + llList2String(details, 0) + " is " + llList2String(details, 1));
    }
}
*/