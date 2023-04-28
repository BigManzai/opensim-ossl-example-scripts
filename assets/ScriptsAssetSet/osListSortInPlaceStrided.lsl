/* osListSortInPlaceStrided(list src, integer stride, integer stride_index, integer ascending)
Identical to llListSortStrided but does the sort on the original list, so using less memory.

    src: the list to sort
    stride: the list stride.
    stride_index: index of the element to sort by in stride
    ascending: it it is 1 or TRUE, sort in ascending order. If it is any other value, sort in descendent order.

Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Extra Delay 	0 seconds
Notes           This function was added in 0.9.3  */


default
{
    state_entry()
    {
        llSay(0, "osListSortInPlaceStrided example");
        list src = [1,"D",-4,"A",9,"B"];
        llSay(0, "original list: " + llDumpList2String(src,","));
        osListSortInPlaceStrided(src, 2, 0, TRUE);
        llSay(0, "sorted in ascending order with stride 2, index 0: " + llDumpList2String(src,","));
 
        src = [1,"D",-4,"A",9,"B"];
        llSay(0, "original list: " + llDumpList2String(src,","));
        osListSortInPlaceStrided(src, 2, 1, TRUE);
        llSay(0, "sorted in ascending order with stride 2, index 1: " + llDumpList2String(src,","));
    }
}
