/*
void osKickAvatar(string FirstName,string SurName, string alert)

void osKickAvatar(key agentId, string alert)
Kicks the selected avatar, closing its connection.

Agent key argument version added February 20, 2019
Threat Level 	Severe
Permissions 	${OSSL|osslParcelO}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

//
// osKickAvatar Script Example
//
 
default
  {
     state_entry()
     {
         osKickAvatar("AvatarFirst","AvatarLast","You have been kicked!");
     }
  }