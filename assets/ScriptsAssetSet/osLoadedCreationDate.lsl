/*
string osLoadedCreationDate()

    This function returns a string containing the date that a sim was first created. An example of the string returned is "Monday, December 07, 2009". 

    It will return empty string if the region hasn't been created by oar import, or the region uses SQLite for region database. 

Threat Level 	Low
Permissions 	${OSSL|osslParcelOG}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/


//Example osLoadedCreationDate
 
default {
    touch_start(integer num) {
        string data = "\n\n Creation Date: " + osLoadedCreationDate();
        data += "\n Creation Time: " + osLoadedCreationTime();
        data += "\n Creation ID: " + osLoadedCreationID();
        llSay(0, data);
    }
}