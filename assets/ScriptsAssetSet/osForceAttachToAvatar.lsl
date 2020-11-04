/*
osForceAttachToAvatar(integer attachmentPoint)
Works exactly like llAttachToAvatar() except that PERMISSION_ATTACH is not required.
Threat Level 	High
Permissions 	${OSSL|osslParcelO}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Notes
This function was added in 0.7.4-post-fixes 
*/

default
{
    state_entry()
    {
        llSay(0, "Script running");
    }
}