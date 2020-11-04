/*
osCauseDamage(key avatar, float damage)
Implemented December 30,2009 by Revolution in GIT# 87959464c9db8948bed89909913400bc2eb7524d - Rev 11850

This is an updated version of Mantis 0003777. It allows for damage on collision, touch, etc.

See also OsCauseHealing.
Threat Level 	High
Permissions 	${OSSL|osslParcelO}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

default
{
   state_entry()
   {
       osCauseDamage(llGetOwner(), 50);
   }
}