/*
key osAvatarName2Key(string FirstName, string LastName)
Returns an avatar's key, based on his/her first and last name.
Threat Level 	Low
Permissions 	${OSSL|osslParcelOG}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

//
// Sample Script using osAvatarName2Key(first,last) to send Instant Message
// 
 
string FirstName = "John";
string LastName = "Smith";
default
{
   state_entry()
   {
       llSay(0, "Script running");
   }
   touch_end(integer num)
   {
       kAvatarKey = osAvatarName2Key(FirstName, LastName);
       llInstantMessage(kAvatarKey, "Test Message Here");    
   }
}