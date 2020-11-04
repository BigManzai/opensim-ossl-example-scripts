/*
osCauseHealing(key avatar, float healing)
Implemented December 30,2009 by Revolution in GIT# 87959464c9db8948bed89909913400bc2eb7524d - Rev 11850

This does the opposite of osCauseDamage. It gives health to the avatar.

See also OsCauseDamage.
Threat Level 	High
Permissions 	${OSSL|osslParcelO}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

default
{
   state_entry()
  {
     osCauseHealing(llGetOwner(), 50);
  }
}