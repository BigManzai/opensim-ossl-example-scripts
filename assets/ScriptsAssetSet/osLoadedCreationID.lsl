/*
string osLoadedCreationID()

    This function returns a string containing the UUID that a sim was originally created with. 

    It will return empty string if the region hasn't been created by oar import, or the region uses SQLite as region database. 

Threat Level 	Low
Permissions 	${OSSL|osslParcelOG}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/


//Example osLoadedCreationID
 
default {
    touch_start(integer num) {
        string data = "\n\n Creation Date: " + osLoadedCreationDate();
        data += "\n Creation Time: " + osLoadedCreationTime();
        data += "\n Creation ID: " + osLoadedCreationID();
        llSay(0, data);
    }
}