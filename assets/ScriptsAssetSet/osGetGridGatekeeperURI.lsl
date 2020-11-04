/*
string osGetGridGatekeeperURI()
Returns the current grid's Gatekeeper URI as a string. If HG is not configured, returns empty string.
Threat Level 	Moderate
Permissions 	${OSSL|osslParcelO}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

//
// Example of osGetGridGatekeeperUri()
//
default
{
  state_entry()
  {
     llSay(0, "Grid Gatekeeper Uri= "+osGetGridGatekeeperURI());
   }
}