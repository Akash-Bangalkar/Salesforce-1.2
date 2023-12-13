trigger CaseTrigger on Case (before insert, before update) {
	if(trigger.isBefore)
    {
        if(trigger.isInsert)
        {
            CaseAssignee.changeOwner(trigger.new, trigger.oldMap);
        }
        else if(trigger.isUpdate)
        {
            CaseAssignee.changeOwner(trigger.new, trigger.oldMap);
        }
    }
}