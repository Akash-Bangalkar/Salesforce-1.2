@isTest
private class IssueControllerClassTest {
	@isTest
    private static void firstMethod()
    {
        List<Issue__c> issue = New List<Issue__c>();
        
        Issue__c iss1 = New Issue__c();
        iss1.Summary__c = 'Test';
        iss1.Issue_Type__c = 'Bug';
        issue.add(iss1);
        
        Issue__c iss2 = New Issue__c();
        iss2.Summary__c = 'Test2';
        iss2.Issue_Type__c = 'Task';
        issue.add(iss2);
        
        Issue__c iss3 = New Issue__c();
        iss3.Summary__c = 'Test3';
        iss3.Issue_Type__c = 'Epic';
        issue.add(iss3);
        
        test.startTest();
        Insert issue;
        test.stopTest();
    }
}