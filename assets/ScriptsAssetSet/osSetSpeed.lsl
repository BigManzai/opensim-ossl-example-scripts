/*
osSetSpeed(key ID, float SpeedModifier)
Implemented December 30, 2009 by Revolution in GIT# 87959464c9db8948bed89909913400bc2eb7524d - Rev 11850

This allows for users to speed themselves up. It multiplies the running, walking, rotating and flying of the avatar.

The default value for SpeedModifier is 1.0.

To be precise, it affects physical velocity. If you specify too large or too small number for SpeedModifier, the target will be unmovable, showing the following message in the region console:

    [PHYSICS]: Got a NaN velocity from Scene in a Character 

Note: As of 0.7.1.1, you can't apply float numbers to SpeedModifier (it will result in script compile error) due to the bug #5564. On 0.7.2-dev or later, you will able to do so.
Threat Level 	Moderate
Permissions 	${OSSL|osslParcelO}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

//
// osSetSpeed Script Example
//
 
default
{
    state_entry()
    {
        osSetSpeed(llGetOwner(), 2.0);
        // This doesn't work as of 0.7.1.1 - It will work on 0.7.2-dev or later
        // osSetSpeed(llGetOwner(), 2.0);
    }
}