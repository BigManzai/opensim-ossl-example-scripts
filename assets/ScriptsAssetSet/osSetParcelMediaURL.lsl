/*
osSetParcelMediaURL(string url)
Sets the Media URL for the parcel the scripted object is in.
Threat Level 	VeryLow
Permissions 	${OSSL|osslParcelOG}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/


//Example osSetParcelMediaURL
 
string sURL = "http://www.archive.org/download/CncdVsFairlightCeasefire/ceasefire_all_fall_down.stream.mp4"; // The URL we are setting to the parcel.
//
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see how osSetParcelMediaURL works");
    }
    touch_start(integer num)
    {
        llSay(PUBLIC_CHANNEL, "Media URL being set to : " + sURL);
        osSetParcelMediaURL(sURL);
    }
}