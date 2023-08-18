public class IssueControllerClass {
	public static void SetPriority(List<Issue__c> issueList)
    {
        for(Issue__c iss:issueList)
        {
            if(iss.Issue_Type__c == 'Bug')
            {
                iss.Priority__c = 'High';
            }
            else if(iss.Issue_Type__c == 'Task')
            {
                iss.Priority__c = 'Medium';
            }
            else
            {
                iss.Priority__c = 'Low';
            }
        }
    }
}