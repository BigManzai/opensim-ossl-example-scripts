/*
osNpcMoveToTarget(key npc, vector target, integer options)
Move the avatar to a given target over time. How the avatar will get there depends on the following options.

OS_NPC_FLY - Fly the avatar to the given position. The avatar will not land unless the OS_NPC_LAND_AT_TARGET option is also given.

OS_NPC_NO_FLY - Do not fly to the target. The NPC will attempt to walk to the location. If it's up in the air then the avatar will keep bouncing hopeless until another move target is given or the move is stopped.

OS_NPC_LAND_AT_TARGET - If given and the avatar is flying, then it will land when it reaches the target. If OS_NPC_NO_FLY is given then this option has no effect.

OS_NPC_FLY and OS_NPC_NO_FLY are options that cannot be combined - the avatar will end up doing one or the other. If you want the avatar to fly and land at the target, then OS_NPC_LAND_AT_TARGET must be combined with OS_NPC_FLY.

OS_NPC_RUNNING - Run the avatar to the given position.
Threat Level 	High
Permissions 	${OSSL|osslNPC}
Delay 	0 seconds
Notes
This function was added in 0.7.2-post-fixes 
*/

//
// empty Script Example
//

default
{
    state_entry()
    {
        llSay(0, "This script example does not yet exist.");
    }
}