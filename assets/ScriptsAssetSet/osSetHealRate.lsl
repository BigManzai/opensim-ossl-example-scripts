/*
float osSetHealRate(key avatar, float healrate)
Sets the automatic healing rate in % per second.

Default heal rate is now around 0.5% per second.
A value of zero can disable automatic heal, current maximum value is 100 % per second.

See also OsGetHealRate.
Threat Level 	High
Permissions 	${OSSL|osslParcelO}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

//
// osSetHealRate Script Example
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