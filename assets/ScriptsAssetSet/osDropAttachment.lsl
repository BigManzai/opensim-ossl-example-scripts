/*
osDropAttachment()
Requires script to be granted PERMISSION_ATTACH, drops an attachment like a user-triggered attachment drop.
Threat Level 	Moderate
Permissions 	${OSSL|osslParcelO}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Notes
This function was added in 0.7.5-post-fixes  
*/

default
{
    state_entry()
    {
        llSay(0, "Script running");
    }
}