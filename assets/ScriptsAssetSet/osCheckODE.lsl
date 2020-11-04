/*
integer osCheckODE()
That it checks if physics engine is legacy ODE and returns 1 ( TRUE ) it is, or 0 ( FALSE ) if not.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
// Example of osCheckODE()
// Returns 1 if OpenDynamicsEngine is enable else return 0
//
 
default
{
    state_entry()
    {
        if (osCheckODE())
        {
            llOwnerSay("This script requires Bullet or ubOde physics engine");
        }
 
        llSleep(5.0);
        llDie();
    }
}