/*
osForceAttachToAvatar(integer attachmentPoint)
Works exactly like llAttachToAvatar() except that PERMISSION_ATTACH is not required.
Threat Level 	High
Permissions 	${OSSL|osslParcelO}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Notes
This function was added in 0.7.4-post-fixes 
*/

//
// osForceAttachToAvatar Script Example

//
 
default
{
    state_entry()
    {
        llRequestPermissions( llGetOwner(), PERMISSION_ATTACH );
    }
 
    run_time_permissions( integer vBitPermissions )
    {
        if ( vBitPermissions & PERMISSION_ATTACH )     
            osForceAttachToAvatar( ATTACH_LHAND );     
        else     
            llOwnerSay( "Permission to attach denied" );
    }
 
    on_rez(integer rez)
    {
        if (!llGetAttached() )        //reset the script if it's not attached.
            llResetScript();      
    }
 
    attach(key id)
    {
        // The attach event is called on both attach and detach, but 'id' is only valid on attach
        if (id)
            llOwnerSay( "The object is attached to " + llKey2Name(id) );
        else 
            llOwnerSay( "The object is not attached");
    }
}

/*
 Body Constant 	# 	Name 	Comment
ATTACH_HEAD 	2 	Skull 	head
ATTACH_NOSE 	17 	Nose 	nose
ATTACH_MOUTH 	11 	Mouth 	mouth
ATTACH_FACE_TONGUE 	52 	Tongue 	tongue
ATTACH_CHIN 	12 	Chin 	chin
ATTACH_FACE_JAW 	47 	Jaw 	jaw
ATTACH_LEAR 	13 	Left Ear 	left ear
ATTACH_REAR 	14 	Right Ear 	right ear
ATTACH_FACE_LEAR 	48 	Alt Left Ear 	left ear (extended)
ATTACH_FACE_REAR 	49 	Alt Right Ear 	right ear (extended)
ATTACH_LEYE 	15 	Left Eye 	left eye
ATTACH_REYE 	16 	Right Eye 	right eye
ATTACH_FACE_LEYE 	50 	Alt Left Eye 	left eye (extended)
ATTACH_FACE_REYE 	51 	Alt Right Eye 	right eye (extended)
ATTACH_NECK 	39 	Neck 	neck
ATTACH_LSHOULDER 	3 	Left Shoulder 	left shoulder
ATTACH_RSHOULDER 	4 	Right Shoulder 	right shoulder
ATTACH_LUARM 	20 	L Upper Arm 	left upper arm
ATTACH_RUARM 	18 	R Upper Arm 	right upper arm
ATTACH_LLARM 	21 	L Lower Arm 	left lower arm
ATTACH_RLARM 	19 	R Lower Arm 	right lower arm
ATTACH_LHAND 	5 	Left Hand 	left hand
ATTACH_RHAND 	6 	Right Hand 	right hand
ATTACH_LHAND_RING1 	41 	Left Ring Finger 	left ring finger
ATTACH_RHAND_RING1 	42 	Right Ring Finger 	right ring finger
ATTACH_LWING 	45 	Left Wing 	left wing
ATTACH_RWING 	46 	Right Wing 	right wing
ATTACH_CHEST 	1 	Chest 	chest/sternum
ATTACH_LEFT_PEC 	29 	Left Pec 	left pectoral
ATTACH_RIGHT_PEC 	30 	Right Pec 	right pectoral
ATTACH_BELLY 	28 	Stomach 	belly/stomach/tummy
ATTACH_BACK 	9 	Spine 	back
ATTACH_TAIL_BASE 	43 	Tail Base 	tail base
ATTACH_TAIL_TIP 	44 	Tail Tip 	tail tip
ATTACH_AVATAR_CENTER 	40 	Avatar Center 	avatar center/root
ATTACH_PELVIS 	10 	Pelvis 	pelvis
ATTACH_GROIN 	53 	Groin 	groin
ATTACH_LHIP 	25 	Left Hip 	left hip
ATTACH_RHIP 	22 	Right Hip 	right hip
ATTACH_LULEG 	26 	L Upper Leg 	left upper leg
ATTACH_RULEG 	23 	R Upper Leg 	right upper leg
ATTACH_RLLEG 	24 	R Lower Leg 	right lower leg
ATTACH_LLLEG 	27 	L Lower Leg 	left lower leg
ATTACH_LFOOT 	7 	Left Foot 	left foot
ATTACH_RFOOT 	8 	Right Foot 	right foot
ATTACH_HIND_LFOOT 	54 	Left Hind Foot 	left hind foot
ATTACH_HIND_RFOOT 	55 	Right Hind Foot 	right hind foot
		
HUD Constant 	Comment
ATTACH_HUD_CENTER_2 	31 	HUD Center 2
ATTACH_HUD_TOP_RIGHT 	32 	HUD Top Right
ATTACH_HUD_TOP_CENTER 	33 	HUD Top
ATTACH_HUD_TOP_LEFT 	34 	HUD Top Left
ATTACH_HUD_CENTER_1 	35 	HUD Center
ATTACH_HUD_BOTTOM_LEFT 	36 	HUD Bottom Left
ATTACH_HUD_BOTTOM 	37 	HUD Bottom
ATTACH_HUD_BOTTOM_RIGHT 	38 	HUD Bottom Right 
*/