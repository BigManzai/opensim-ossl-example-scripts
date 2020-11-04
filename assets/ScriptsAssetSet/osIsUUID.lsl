/*
integer osIsUUID(string thing)
Returns 1 if the supplied string can be converted to key (uuid), returns 0 otherwise.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

// Example of osIsUUID

default
{
    state_entry()
    {
        string good_key = "09090909-1111-2222-3213-874598734592";
        string bad_key =  "8e9a6ed1-e2f4-4735-8132-e027bbcd27g1";
 
        llOwnerSay((string)osIsUUID(good_key));
        llOwnerSay((string)osIsUUID(bad_key));
    }
}