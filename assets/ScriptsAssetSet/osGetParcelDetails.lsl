/* osGetParcelDetails(key parcelID, list rules)
This function is like llGetParcelDetails, but using parcel global id (parcelID) instead of position in region.
Threat Level 	none is unknown threat level
Permissions 	none
Extra Delay 	0 seconds
Notes           This function was added in 0.9.3.0  */

default
{
    touch_start(integer blabla)
    {
        list ids = osGetParcelIDs();
        integer count = llGetListLength(ids);
        integer i = 0;
        while (i < count)
        {
            list tmp = osGetParcelDetails(llList2Key(ids,i++),[PARCEL_DETAILS_OWNER,PARCEL_DETAILS_NAME,PARCEL_DETAILS_AREA]);
            llSay(0,"** "+llDumpList2String(tmp," "));
        }
    }
}
