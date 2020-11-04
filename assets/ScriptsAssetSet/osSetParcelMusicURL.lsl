/*
osSetParcelMusicURL(string url)
Sets the Music URL for the parcel the scripted object is in.
Threat Level 	VeryLow
Permissions 	${OSSL|osslParcelOG}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/


//Example osSetParcelMusicURL
 
string sURL = "https://archive.org/download/CncdVsFairlightCeasefire/ceasefire_all_fall_down.320k.mp3"; // The URL we are setting to the parcel.
//
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see how osSetParcelMusicURL works");
    }
    touch_start(integer num)
    {
        llSay(PUBLIC_CHANNEL, "Music URL being set to : " + sURL);
        osSetParcelMusicURL(sURL);
    }
}