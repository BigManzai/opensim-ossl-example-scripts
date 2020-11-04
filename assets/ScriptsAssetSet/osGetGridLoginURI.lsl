/*
string osGetGridLoginURI()
Returns the current grid's login URI as a string.
Threat Level 	Moderate
Permissions 	${OSSL|osslParcelO}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

//
// Example of osGetGridLoginUri()
// returns the value of loginuri = "http://GRIDDOMAINorIP:8002" in OpenSim.ini under [GridInfo] section
//
default
{
  state_entry()
  {
     llSay(0, "Grid Login Uri= "+osGetGridLoginURI());
   }
}