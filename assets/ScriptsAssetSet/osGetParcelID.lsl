/* osGetParcelID()
This function returns the parcel global id (parcelID) of the parcel where host prim is.
Threat Level 	none is unknown threat level
Permissions 	none
Extra Delay 	0 seconds
Notes           This function was added in 0.9.3.0*/

default
{
    touch_start(integer hhh)
    {
        key id = osGetParcelID();
        list tmp = osGetParcelDetails(id,[PARCEL_DETAILS_OWNER,PARCEL_DETAILS_NAME,PARCEL_DETAILS_AREA]);
        llSay(0,"** "+llDumpList2String(tmp," "));
    }
}
