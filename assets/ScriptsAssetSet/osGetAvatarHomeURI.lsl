/*
string osGetAvatarHomeURI(key avatarId)
Returns an avatar's Home URI.
Threat Level 	Low
Permissions 	${OSSL|osslParcelOG}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

//
// Sample Script
// 
 
default
{
    touch_start(integer num_detected)
    {
        key avatarKey = llDetectedKey(0);
        string homeUri = osGetAvatarHomeURI(avatarKey);
        llSay(0, "Your Home URI is: " + homeUri);
    }
}