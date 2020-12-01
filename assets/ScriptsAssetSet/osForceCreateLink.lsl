/*
osForceCreateLink(key target, integer parent)

    Idential to llCreateLink() except that it doesn't require the link permission to be granted. Present in 0.8 and later. 

Threat Level 	VeryLow
Permissions 	${OSSL|osslParcelO}ESTATE_MANAGER,ESTATE_OWNER
Delay 	1 seconds
Notes
This function was added in 0.8-post-fixes 
*/

//
// empty Script Example
//

default
{
    state_entry()
    {
        llSay(0, "This script example does not yet exist.");
    }
}