/*
integer osSetTerrainHeight(integer x, integer y, float val)
NOTE' : This function replaces the deprecated OsTerrainSetHeight function.

Sets terrain height X & Y Values. Returns TRUE(1) if success, FALSE(0) if failed

osTerrainFlush should be called after all the terrain-changes have been done to update Terrain Data.
Threat Level 	High
Permissions 	ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

// Example osSetTerrainHeight

default
 {
    touch_start()
    {
       osSetTerrainHeight(40, 101, 21.4);
       osTerrainFlush();
    }
 }