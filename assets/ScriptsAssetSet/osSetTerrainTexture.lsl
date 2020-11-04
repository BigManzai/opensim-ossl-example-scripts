/*
osSetTerrainTexture(integer level, key texture)
Set the terrain texture of the estate to the texture given as key. The level can be 0, 1, 2 or 3.
Threat Level 	High
Permissions 	ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

// Example osSetTerrainTexture

// Default Terrain Textures by djphil 2018
 
default
{
    state_entry()
    {
        osSetTerrainTexture(0, "b8d3965a-ad78-bf43-699b-bff8eca6c975");
        osSetTerrainTextureHeight(0, 10.0, 60.0);
        osSetTerrainTexture(1, "abb783e6-3e93-26c0-248a-247666855da3");
        osSetTerrainTextureHeight(1, 10.0, 60.0);
        osSetTerrainTexture(2, "179cdabd-398a-9b6b-1391-4dc333ba321f");
        osSetTerrainTextureHeight(2, 10.0, 60.0);
        osSetTerrainTexture(3, "beb169c7-11ea-fff2-efe5-0f24dc881df2");
        osSetTerrainTextureHeight(3, 10.0, 60.0);
    }
}