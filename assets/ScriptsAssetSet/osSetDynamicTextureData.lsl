/*
key osSetDynamicTextureData(string dynamicID, string contentType, string data, string extraParams, integer timer)

    Renders a dynamically created texture on the prim containing the script and returns the UUID of the newly created texture.
    If you use this feature, you have to turn on any cache. If not, you'll see complete white texture. 

Threat Level 	VeryLow
Permissions 	${OSSL|osslParcelOG}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

// Example of OsSetDynamicTextureData used to render custom drawings on a prim
default
{
    state_entry()
    {
        string CommandList = ""; // Storage for our drawing commands
 
        CommandList = osSetPenSize( CommandList, 3 );                 // Set the pen width to 3 pixels
        CommandList = osSetPenColor( CommandList, "Red" );           // Set the pen color to red
        CommandList = osMovePen( CommandList, 28, 78 );               // Upper left corner at <28,78>
        CommandList = osDrawFilledRectangle( CommandList, 200, 100 ); // 200 pixels by 100 pixels
 
        // Now draw the rectangle
        osSetDynamicTextureData( "", "vector", CommandList, "width:256,height:256", 0 );
    }
}