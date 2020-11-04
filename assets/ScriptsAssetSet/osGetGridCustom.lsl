/*
string osGetGridCustom(string key)
Returns the value of the GridInfo key as a string.
Threat Level 	Moderate
Permissions 	${OSSL|osslParcelO}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

//
// Example of osGetGridCustom(string key)
// Returns the grid's value of the sent key ...
//
// For grids and standalones, the [GridInfoService]
// defines key/value pairs for clients. In grids,
// this is found in your Robust[.HG].ini and for
// standalones, this is found in the file -
// ./bin/config-include/StandaloneCommon.ini
//
default
{
    state_entry()
    {
        llSay(0, "Grid Welcome Page = " + osGetGridCustom("welcome"));
    }
}