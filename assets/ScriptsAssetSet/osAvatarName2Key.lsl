/*
key osAvatarName2Key(string FirstName, string LastName)
Returns an avatar's key, based on his/her first and last name.
Threat Level 	Low
Permissions 	${OSSL|osslParcelOG}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

//
// osAvatarName2Key Script Exemple
// Author: djphil
// 
 
string FirstName = "John";
string LastName = "Smith";
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osAvatarName2Key usage.");
    }
 
    touch_start(integer number)
    {
        string AvatarName = FirstName + " " + LastName;
        key AvatarKey = osAvatarName2Key(FirstName, LastName);
 
        llSay(PUBLIC_CHANNEL, "The avatar name is " + AvatarName);   
        llSay(PUBLIC_CHANNEL, "The avatar key is " + (string)AvatarKey);    
    }
}

/*
//
// osAvatarName2Key Script Exemple
// Author: djphil
// 
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osAvatarName2Key usage.");
    }
 
    touch_start(integer number)
    {
        string AvatarName = llDetectedName(0);
        list buffer = llParseString2List(AvatarName, [" "], []);
        string FirstName = llList2String(buffer, 0);
        string LastName = llList2String(buffer, 1);
        key AvatarKey = osAvatarName2Key(FirstName, LastName);
 
        llSay(PUBLIC_CHANNEL, "Your avatar name is " + AvatarName);   
        llSay(PUBLIC_CHANNEL, "Your avatar key is " + (string)AvatarKey);    
    }
}
*/