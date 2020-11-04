/*
key osSetDynamicTextureDataFace(string dynamicID, string contentType, string data, string extraParams, integer timer, integer face);

Threat Level 	VeryLow
Permissions 	${OSSL|osslParcelOG}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

// Example of osSetDynamicTextureDataFace
 
default
{
    state_entry()
    {
        string CommandList;
        CommandList = osSetFontName(CommandList, "Courier New");
        CommandList = osSetFontSize(CommandList, 14);
        CommandList = osMovePen(CommandList, 20, 20); 
        CommandList = osDrawText(CommandList, "A dynamic texture!");
        osSetDynamicTextureDataFace("", "vector", CommandList, "width:512,height:512", 0, 0);
    }
}