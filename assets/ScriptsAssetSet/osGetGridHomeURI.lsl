/*
string osGetGridHomeURI()
Returns the current grid's home URI as a string. if HG is not configured, returns empty string
Threat Level 	Moderate
Permissions 	${OSSL|osslParcelO}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

//
// Example of osGetGridHomeUri()
//
default
{
  state_entry()
  {
     llSay(0, "Grid Home Uri= "+osGetGridHomeURI());
   }
}