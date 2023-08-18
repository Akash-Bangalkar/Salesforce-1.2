trigger IssueTrigger on Issue__c (before insert) {
	if(trigger.isBefore)
    {
        if(trigger.isInsert)
        {
            IssueControllerClass.SetPriority(trigger.new);
        }
    }
}