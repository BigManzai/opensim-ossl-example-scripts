/*
list osGetLinkPrimitiveParams(integer linknumber, list rules)
Returns the primitive parameters for the linkset prim or prims specified by linknumber. It is possible to use the linkset constants (e.g. LINK_SET, LINK_ALL_CHILDREN) in place of a specific link number, in which case the requested parameters of each relevant prim are concatenated to the end of the list. Otherwise, the usage is identical to llGetPrimitiveParams().
Threat Level 	High
Permissions 	No permissions specified
Delay 	No function delay specified
Example(s)
*/

// llGetLinkPrimitiveParams() example script
//
// Trivial example which averages the sizes of all the prims in the linkset and returns the resuilt.
//
default
{
    state_entry()
    {
        vector average = ZERO_VECTOR;
        list params = osGetLinkPrimitiveParams( LINK_SET, [ PRIM_SIZE ] );
        integer len = llGetListLength( params );
        integer i;
 
        for (i = 0; i < len; i++)
            average += llList2Vector( params, i );
 
        average /= (float) len;
        llOwnerSay( "The average size of the prims in this linkset is " + (string) average );
    }
}