/*
osMessageObject(key objectID, string message)
Where objectID = the UUID of the object you are messaging.

Where message = The String of data you want to send.

Sends a message to to object identified by the given UUID, a script in the object must implement the dataserver function the dataserver function is passed the ID of the calling function and a string message.
Threat Level 	Low
Permissions 	${OSSL|osslParcelOG}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
This example consists of a sender script, and a reciever script.

	Sender script 
*/

// ----------------------------------------------------------------
// Example / Sample Script to show function use.
//
// Script Title:    osMessageObject.lsl
// Script Author:
// Threat Level:    Low
// Script Source:   SUPPLEMENTAL http://opensimulator.org/wiki/osMessageObject
//
// Notes: See Script Source reference for more detailed information
// This sample is full opensource and available to use as you see fit and desire.
// Threat Levels only apply to OSSL & AA Functions
// See http://opensimulator.org/wiki/Threat_level
// ================================================================
// Inworld Script Line:    osMessageObject(key objectUUID, string message);
//
// Example of osMessageObject
//
// SPECIAL NOTE
// send a message to to object identified by the given UUID,
// a script in the Receiving object must implement the dataserver function
// the dataserver function is passed the ID of the calling function and a string message
// Dataserver event is only raised in the root prim of the linkset
// 
//
default
{
    state_entry()
    {
        llSay(0, "Touch me to use osMessageObject to message an object");
    }
    touch_end(integer total_num)
    {
        key kTargetObj = "UUID"; //INSERT A VALID Object UUID here
        string sSentence = "This message sent from a Sending object using osMessageObject";
        osMessageObject(kTargetObj,sSentence);
    }
}

/*     Reciever script 

// Place this script in the Receiver prim.
default
{
    state_entry()
    {
        llSay(0, "osMessageObject Receiver Ready\nPlease replace UUID in osMessageObject Script (line 31) kTargetObj = "+(string)llGetKey());
    }
    dataserver(key query_id, string data)
    {
        llSay(0, "RECEIVER: The message received.\n\t query_id = "+(string)query_id+"\n\t msg = "+data);
    }
}
*/