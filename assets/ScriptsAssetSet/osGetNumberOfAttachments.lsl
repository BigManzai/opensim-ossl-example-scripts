/*
list osGetNumberOfAttachments(key avatar, list attachmentPoints);
Returns a strided list of the specified attachment points and the number of attachments on those points. In OpenSimulator 0.7.5 development code only.
Threat Level 	Moderate
Permissions 	${OSSL|osslParcelO}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

//
// osGetNumberOfAttachments Script Example
//
 
string NPCName = "osMessageAttachments";
key npc;
 
default
{
    state_entry()
    {
        llSensor("", NULL_KEY, OS_NPC, 96, TWO_PI);
    }
 
    sensor(integer d)
    {
        integer i;
        for(i=0;i<d;++i)
        {
            if(llDetectedName(i) == NPCName + " NPC")
            {
                osNpcRemove(llDetectedKey(i));
            }
        }
 
        llSensor("", NULL_KEY, OS_NPC, 96, TWO_PI);
    }
 
    no_sensor()
    {
        state ready;
    }
}
 
 
state ready
{
    state_entry()
    {
        npc = osNpcCreate(NPCName, "NPC", llGetPos(), llGetOwner());
    }
 
    touch_start(integer p)
    {
        integer i;
        integer wasNPC = FALSE;
        for(i=0;i<p;++i)
        {
            key detected = llDetectedKey(i);
            if(!wasNPC)
            {
                wasNPC = detected == npc;
            }
            list attachments = osGetNumberOfAttachments(detected, [
                ATTACH_HEAD,
                ATTACH_LHAND,
                ATTACH_RHAND
            ]);
            list attachmentsToMessage = [];
            integer j;
            integer k = llGetListLength(attachments);
            integer l;
            for(j=0;j<k;j+=2){
                l = llList2Integer(attachments, j);
                if(l > 0 && llList2Integer(attachments, j + 1) > 0){
                    attachmentsToMessage += [l];
                }
            }
            osMessageAttachments(detected, "foo", attachmentsToMessage, 0);
            osMessageAttachments(detected, "bar", attachmentsToMessage, OS_ATTACH_MSG_INVERT_POINTS);
            osMessageAttachments(detected, "baz", [OS_ATTACH_MSG_ALL], 0);
            osMessageAttachments(detected, "will never be sent", [OS_ATTACH_MSG_ALL], OS_ATTACH_MSG_INVERT_POINTS);
 
            osMessageAttachments(detected, "heard by both feet", [ATTACH_LFOOT, ATTACH_RFOOT], 0);
            osMessageAttachments(detected, "heard by object creator feet", [ATTACH_LFOOT, ATTACH_RFOOT], OS_ATTACH_MSG_OBJECT_CREATOR);
            osMessageAttachments(detected, "heard by script creator feet", [ATTACH_LFOOT, ATTACH_RFOOT], OS_ATTACH_MSG_SCRIPT_CREATOR);
        }
        if(!wasNPC)
        {
            osNpcTouch(npc, llGetKey(), 0);
        }
    }
}