/*
osSetOwnerSpeed(float SpeedModifier)
Implemented september 28, 2018 by Bill Blight in GIT# 6d9de1 & 881268 and MANTIS# 8383

This allows for users to speed themselves up. It multiplies the running, walking, rotating and flying of the avatar.

The default value for SpeedModifier is 1.0 and the maximum value is 4.0.

To be precise, it affects physical velocity. If you specify too large or too small number for SpeedModifier, the target will be unmovable, showing the following message in the region console:

    [PHYSICS]: Got a NaN velocity from Scene in a Character 

Note: ...
Threat Level 	Moderate
Permissions 	${OSSL|osslParcelO}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

//
// osSetOwnerSpeed Script Example
//
 
default
{
    state_entry()
    {
        osSetOwnerSpeed(2.5);
    }
}