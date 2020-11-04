/*
string osGetAgentIP(key uuid);
Requires: key uuid of agent to get IP address for.

Returns: string representing the IP address returned.

Possible Exceptions thrown:

System.Exception: OSSL Runtime Error: osGetAgentIP permission denied.  
Allowed threat level is VeryLow but function threat level is High.

Notes: Unknown if this function requires a valid Detect event such as touch or collision.

Unknown what is returned for IPv6.

osGetAgentIP is always restricted to Administrators
Threat Level 	Severe
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
// Example of osGetAgentIP
//
default
{
  state_entry()
  {
     // Demo-Script 
  }
  touch_start(integer total_number)
  {
     llSay (0, "Your IP is : "+ osGetAgentIP(llDetectedKey(0)));
  }
}