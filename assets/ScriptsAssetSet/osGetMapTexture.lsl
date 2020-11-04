/*
key osGetMapTexture()
Returns the UUID of the map texture of the current region.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/


// Example of osGetMapTexture

default
{
    state_entry()
    {
        llSetTexture(osGetMapTexture(),ALL_SIDES);
    }
}