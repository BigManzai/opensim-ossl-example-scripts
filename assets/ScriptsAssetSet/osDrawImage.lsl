/*
string osDrawImage(string drawList, integer width, integer height, string imageUrl)
Appends an Image drawing command to the string provided in drawList and returns the result.

Retrieves an image specified by the imageUrl parameter and draws it at the specified height and width, with the upper left corner of the image placed at the pen's current position. After the image is drawn, the width and height values are added to the pen's X and Y position, respectively (that is, the pen's current position is set to the lower right corner of the image).

If imageUrl points to an invalid location, an image type not supported by libgdi, or a non-image MIME type, nothing is drawn. If either or both of the width or height parameters are zero or negative, nothing is drawn, but the image is still retrieved.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	No function delay specified
Example(s)
*/

// Example of osDrawImage
default
{
    state_entry()
    {
        string CommandList = ""; // Storage for our drawing commands
        string ImageURL = "http://opensimulator.org/skins/osmonobook/images/headerLogo.png";
        CommandList = osMovePen( CommandList, 0, 0 );                // Upper left corner at <0,0>
        CommandList = osDrawImage( CommandList, 256, 54, ImageURL ); // 200 pixels by 100 pixels
 
        // Now draw the image
        osSetDynamicTextureData( "", "vector", CommandList, "width:256,height:256", 0 );
    }
}