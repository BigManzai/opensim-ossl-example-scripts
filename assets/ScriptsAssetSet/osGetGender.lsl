/*
string osGetGender(key id)
Returns a string with one of the following values: "male", "female", or "unknown". This value is determined by the value selected for the avatar shape in the appearance dialog in the user's viewer. If that value cannot be found for any reason (avatar is not in the region, improperly formatted key, etc.), "unknown" is returned.
Threat Level 	None
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
// Example of osGetGender.
//
default
{
    touch_start(integer total_number)
    {
        string gender = osGetGender(llDetectedKey(0));
        llSay(0, "Your gender is:" + gender);
    }
}