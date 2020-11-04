/*
string osDetectedCountry(integer index)
Returns a string that indicates the country in which the avatar is located.
Threat Level 	None
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
// Sample script using osDetectedCountry
// 
 
default
{
   state_entry()
   {
       llSay(0, "Script running");
   }
 
   touch_end(integer num)
   {
       string country = osDetectedCountry(0);
       llSay(0, "You are in country " + country);
   }
}