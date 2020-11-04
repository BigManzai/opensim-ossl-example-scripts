/*
osTerrainFlush();
Function updates terrain changes to OpenSimulator database. This should be called after all the terrain-changes have been done to update Terrain Data.

Used in conjunction with OsSetTerrainHeight
Threat Level 	VeryLow
Permissions 	ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

// Example osTerrainFlush

default
 {
    touch_start()
    {
       osSetTerrainHeight(40, 101, 21.4);
       osTerrainFlush();
    }
 }