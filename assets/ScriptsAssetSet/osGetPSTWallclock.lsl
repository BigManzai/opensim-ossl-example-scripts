/*
float osGetPSTWallclock()
returns the current PST or PDT time in seconds since midnight
Threat Level 	No threat level specified
Permissions 	No permissions specified
Delay 	0 seconds
Example(s)
*/

// Example of osGetPSTWallclock
default
{
    state_entry()
    {
        llSay(0, "started at at " + (string)osGetPSTWallclock());
    }
}