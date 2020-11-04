/*
osSetParcelDetails(vector pos, list rules)
This function is the counterpart to llGetParcelDetails. Currently PARCEL_DETAILS_NAME, PARCEL_DETAILS_DESC, PARCEL_DETAILS_OWNER, PARCEL_DETAILS_GROUP, PARCEL_DETAILS_CLAIMDATE are implemented. Note that the threat levels for PARCEL_DETAILS_NAME and PARCEL_DETAILS_DESC are "High", and those for PARCEL_DETAILS_OWNER, PARCEL_DETAILS_GROUP and PARCEL_DETAILS_CLAIMDATE are "VeryHigh".
Threat Level 	High or VeryHigh (see description) is unknown threat level
Permissions 	${OSSL|osslParcelO}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

// ----------------------------------------------------------------
// Example / Sample Script to show function use.
//
// Script Title:    osSetParcelDetails.lsl
// Script Author:
// Threat Level:    High
// Script Source:   SUPPLEMENTAL http://opensimulator.org/wiki/osSetParcelDetails
//
// Notes: See Script Source reference for more detailed information
// This sample is full opensource and available to use as you see fit and desire.
// Threat Levels only apply to OSSL & AA Functions
// See http://opensimulator.org/wiki/Threat_level
// ================================================================
// C# Source Line:      public void osSetParcelDetails(LSL_Vector pos, LSL_List rules)
// Inworld Script Line:     osSetParcelDetails(vector pos, list rules);
//
// Example of osSetParcelDetails
// This function allows for setting parcels information programmatically.
// -- constants for osSetParcelDetails
//    PARCEL_DETAILS_NAME = 0;
//    PARCEL_DETAILS_DESC = 1;
//    PARCEL_DETAILS_OWNER = 2;
//    PARCEL_DETAILS_GROUP = 3;
//    PARCEL_DETAILS_CLAIMDATE = 10;
// 
default
{
    state_entry()
    {
        llSay(0,"Touch to use osSetParcelDetails Parcels");
    }
    touch_start(integer total_num)
    {
        vector position = <128.0, 128.0, 0.0>;       //Parcel Location: centre of region
        string name = "My New Land ";                //Parcel Name to set
        string descript = "My New Land Description"; //Parcel Description text
        key owner = llGetOwner();                    //Parcel Owners UUID
        key group = NULL_KEY;                        //Parcel Group UUID
        integer claimed = 0;                         //Parcel Claimed Unix-Timestamp (0 = for current, value>0 for any unix-timestamp->seconds since Jan 01 1970>)  
        // setup the Rules List with the above values 
        list rules =[
            PARCEL_DETAILS_NAME, name,
            PARCEL_DETAILS_DESC, descript,
            PARCEL_DETAILS_OWNER, owner,
            PARCEL_DETAILS_GROUP, group,
            PARCEL_DETAILS_CLAIMDATE, claimed];
        osSetParcelDetails(position, rules);
    }
}