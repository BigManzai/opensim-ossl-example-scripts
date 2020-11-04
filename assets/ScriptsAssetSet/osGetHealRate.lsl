/*
float osGetHealRate(key avatar)
Gets the current automatic healing rate in % per second.

Default heal rate is now around 0.5% per second.
A value of zero can disable automatic heal, current maximum value is 100 % per second.

See also OsSetHealRate.
Threat Level 	None
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
// osGetHealth Script Example
//
 
default
{
    state_entry()
    {
        key uuid = llGetOwner();
        osSetHealRate(uuid, 10.0);
        osCauseDamage(uuid, 50.0);
        llOwnerSay("osGetHealRate = " + (string)osGetHealRate(uuid));
        llOwnerSay(llKey2Name(uuid) + " has " + (string)osGetHealth(uuid) + "% health left.");
    }
}