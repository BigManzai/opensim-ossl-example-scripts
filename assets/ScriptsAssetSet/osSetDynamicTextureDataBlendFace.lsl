/*
key osSetDynamicTextureDataBlendFace(string dynamicID, string contentType, string data, string extraParams, integer blend, integer disp, integer timer, integer alpha, integer face)
Renders a dynamically created texture on the face of a prim containing the script, possibly blending it with the texture that is already set for the face. Returns UUID of the generated texture.
Threat Level 	VeryLow
Permissions 	${OSSL|osslParcelOG}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

// Example of osSetDynamicTextureDataBlendFace used to put a number on each face of a prim
 
string FontName = "Arial";
integer FontSize = 128;
 
NumberEachFace() {
    integer face = llGetNumberOfSides();
    while (face--) {
        string text = (string)face;
        vector size = osGetDrawStringSize("vector", text, FontName, FontSize);
        integer xpos = (256 - (integer)size.x) >> 1;
        integer ypos = (256 - (integer)size.y) >> 1;
 
        string commandList = "";
        commandList = osMovePen(commandList, xpos, ypos);
        commandList = osSetFontName(commandList, FontName);
        commandList = osSetFontSize(commandList, FontSize);
        commandList = osDrawText(commandList, text);
        osSetDynamicTextureDataBlendFace("", "vector", commandList, "width:256,height:256", FALSE, 2, 0, 255, face);
    }
}
 
default {
    state_entry() {
        NumberEachFace();
    }
    changed(integer change) {
        if (change & CHANGED_SHAPE)
            NumberEachFace();
    }
}