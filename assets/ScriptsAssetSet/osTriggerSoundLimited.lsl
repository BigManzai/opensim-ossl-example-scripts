/*
osTriggerSoundLimited(integer linknum, string sound, float volume, vector north_east_corner, vector south_west_corner)
Start a one time play of the specified sound once at the specified volume in the viewers of avatars located within the box defined by the two vectors.

The sound parameter can be the UUID of a sound or the name of a sound that is in the inventory of the target prim.

The two vectors are locations in region coordinates.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)

osTriggerSoundLimited(linknum, "c98100c4-6a2a-456c-a5ba-3cfdb5c14715", 1.0, <30,30,22>, <50,50,30>);
osTriggerSoundLimited(linknum, "Name of sound in this prim", 1.0, <30,30,22>, <50,50,30>);

Notes
This function was added in 0.9.0.1

Since 0.9.1 if target prim inventory does not contain the sound, the inventory of the prim containing the script calling this function is also checked 
*/

//
// osTriggerSoundLimited Script Example
// Author: djphil
//
 
vector north_east_corner = <30.0, 30.0, 22.0>;
vector south_west_corner = <50.0, 50.0, 30.0>;
string sound;
 
default
{
    state_entry()
    {
        sound = llGetInventoryName(INVENTORY_SOUND, 0);
 
        if (sound == "")
        {
            llSay(PUBLIC_CHANNEL, "Inventory sound missing ...");
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "Touch to hear osTriggerSoundLimited running.");
        }
    }
 
    touch_start(integer number)
    {
        osTriggerSoundLimited(1, sound, 1.0, north_east_corner, south_west_corner);
    }
}

/* And with uuid:

//
// osTriggerSoundLimited Script Example
// Author: djphil
//
 
string sound = "d7a9a565-a013-2a69-797d-5332baa1a947";
vector north_east_corner = <30.0, 30.0, 22.0>;
vector south_west_corner = <50.0, 50.0, 30.0>;
 
default
{
    state_entry()
    {
        if (osIsUUID(sound))
        {
            llSay(PUBLIC_CHANNEL, "Touch to hear osTriggerSoundLimited running.");
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "Invalid uuid detected ...");
        }
    }
 
    touch_start(integer number)
    {
        osTriggerSoundLimited(1, sound, 1.0, north_east_corner, south_west_corner);
    }
}
*/