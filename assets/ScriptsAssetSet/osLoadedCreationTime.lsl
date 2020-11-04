/*
string osLoadedCreationTime()

    This function returns a string containing the time that a sim was first created. An example of the string returned is "2:06:48 AM". 

    It will return empty string if the region hasn't been created by oar import, or the region uses SQLite for region database. 

Threat Level 	Low
Permissions 	${OSSL|osslParcelOG}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/


//Example osLoadedCreationTime
 
default {
    touch_start(integer num) {
        string data = "\n\n Creation Date: " + osLoadedCreationDate();
        data += "\n Creation Time: " + osLoadedCreationTime();
        data += "\n Creation ID: " + osLoadedCreationID();
        llSay(0, data);
    }
}