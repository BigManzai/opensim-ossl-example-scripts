/*
osResetAllScripts(integer AllLinkSet)
    The script initializes an integer variable AllLinkSet with a value of 0. This variable is used as a parameter for the osResetAllScripts() function.

    In the default event handler:
        The touch_start() event is triggered when the object is touched by an avatar.
        When touched, it calls the osResetAllScripts() function with the parameter AllLinkSet. This function resets all scripts within the linked set of the object.

Overall, this script allows users to reset all scripts within the linked set of the object by simply touching the object. The AllLinkSet parameter is set to 0, indicating that all scripts within the linked set should be reset.
*/

// osResetAllScripts Script Example
 
integer AllLinkSet = 0;
 
default
{
    touch_start(integer total_number)
    {
        osResetAllScripts(AllLinkSet);
    }
}
