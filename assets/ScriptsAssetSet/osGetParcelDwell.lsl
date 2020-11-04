/*
integer osGetParcelDwell(vector pos)
This function allows you to get parcel dwell.

Alternatively you can also use PARCEL_DETAILS_DWELL with the function llGetParcelDetails.
Threat Level 	This function does not do a threat level check is unknown threat level
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

// Example osGetParcelDwell

default
{
    state_entry() {;}
 
    touch_start(integer number)
    {
        llSay(PUBLIC_CHANNEL, "Parcel Dwell: " + osGetParcelDwell(llGetPos()));
    }
}