/*
string osGetAgentCountry(key avatarID)
Returns a string that indicates the country in which an avatar is located.
Threat Level 	None
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
// Sample script using osGetAgentCountry
// 
 
default
{
   state_entry()
   {
       llSay(0, "Script running");
   }
 
   touch_end(integer num)
   {
       key avatar_id = llDetectedKey(0);
       string country = osGetAgentCountry(avatar_id);
       llSay(0, "Avatar with id " +(string)avatar_id + " is in country " + country);
   }
}