/*
string osKey2Name(key id)
Returns the avatar's name, based on their UUID.
Threat Level 	Low
Permissions 	${OSSL|osslParcelO}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

//
//osKey2Name() example, by Tom Earth.
//
default
{
    state_entry()
    {
        string owner_name = osKey2Name(llGetOwner());
        llOwnerSay("Your name is: "+owner_name); 
    }
}