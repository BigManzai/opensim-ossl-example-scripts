/*
string osReplaceString(string src, string pattern, string replace, integer count, integer start)
This function is for regular expression-based string replacement. The count parameter specifies the total number of replacements to make where -1 makes all possible replacements.
Threat Level 	VeryLow
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
// osReplaceString usage example
//
 
default
{
    state_entry()
    {
        //Define an example text
        string example_text = "ThX big rXd fox jumpXd ovXr thX lazy dog";
 
        // Show the owner the string before it's changed
        llOwnerSay("Before : ''"+example_text+"''");
 
        // Replace all the upper case X-es with the lower case letter e
        example_text = osReplaceString(example_text, "X", "e", -1, 0);
 
        // Show the owner the string after it's changed
        llOwnerSay("After : ''"+example_text+"''");        
    }
}