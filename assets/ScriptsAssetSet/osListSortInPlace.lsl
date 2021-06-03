/*
osListSortInPlace(list src, integer stride, integer ascending)
Identical to llListSort but does the sort on the original list, so using less memory.

    src: the list to sort
    stride: the list stride.
    ascending: it it is 1 or TRUE, sort in ascending order. If it is any other value, sort in descendent order.

- Does nothing if the list length is not a multiple of stride.
- The sort considers the elements that are at indexes that are multiple of stride. The other elements between those multiples are just copied around.
i.e. if the element at [n * stride] is moved to [m * stride], elements [n * stride + i] are moved to [m * stride + i] for i = 1 to stride -1 (n, m and i integers).
- if there are different object types (ie some are integer, others string, etc) at the consider indexes [n * stride], each type is considered as a sub list and each sub list is sorted.
[1,"D",-4,"A","B"] will be [-4,"A",1,"B","D"], in ascending sort and stride 1.
- Lists with stride 1 and elements all of same type are a lot faster to sort than others, because in that case faster algorithms can be used.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Extra Delay 	0 seconds
Example(s)
*/

//
 // Example of osListSortInPlace()
//
default
{
    state_entry()
    {
        llSay(0, "osListSortInPlace example");
        list src = [1,"D",-4,"A","B"];
        llSay(0, "original list: " + llDumpList2String(src,","));
        osListSortInPlace(src, 1, TRUE);
        llSay(0, "sorted in ascending order with stride 1: " + llDumpList2String(src,","));
 
        src = [1,"D",-4,"A",0,"B"];
        llSay(0, "original list: " + llDumpList2String(src,","));
        osListSortInPlace(src, 2, 1);
        llSay(0, "sorted in ascending order with stride 2: " + llDumpList2String(src,","));
    }
}