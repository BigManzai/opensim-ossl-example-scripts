/*
osMakeNotecard(string notecardName, list contents)

osMakeNotecard(string notecardName, string contents)
Creates a notecard with text in the prim that contains the script. Contents can be either a list or a string.
Threat Level 	High
Permissions 	${OSSL|osslParcelO}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

// osMakeNotecard example by Tom Earth
 
default
{
    touch_start(integer n)
    {
        key id = llDetectedKey(0);
        string name = llKey2Name(id);
        list contents; //The variable we are going to use for the contents of the notecard.
        contents += ["Name: "+name+"\n"];
        contents += ["Key: "+(string)id+"\n"];
        contents += ["Pos: "+(string)llDetectedPos(0)+"\n"];
        contents += ["Rotation: "+(string)llDetectedRot(0)+"\n"];
 
        osMakeNotecard(name,contents); //Makes the notecard.
 
        llGiveInventory(id,name); //Gives the notecard to the person.
        llRemoveInventory(name);
    }
}