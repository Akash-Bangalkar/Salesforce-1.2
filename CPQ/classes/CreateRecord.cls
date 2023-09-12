public class CreateRecord {
	public static void parentRecords()
    {
        //CREATE RECORDS
        /*List<OrderItem> quote = [SELECT ID, External_ID__c FROM OrderItem];
        
        Integer ct = 1;
        for(OrderItem sb:quote)
        {
            sb.External_ID__c = 'OR-'+ct;
            ct++;
        }
        
        UPDATE quote;*/
        
        SBQQ__OrderItemConsumptionRate__c qd = New SBQQ__OrderItemConsumptionRate__c();
        
        qd.Name = 'OPCR-FD65';
        qd.External_ID__c  = 'OCR-1';
        qd.SBQQ__OrderItemConsumptionSchedule__c = 'a1F3x00000eykj2EAA';
        qd.SBQQ__LowerBound__c = 10;
        qd.SBQQ__Price__c = 2500;
        qd.SBQQ__PricingMethod__c = 'Per Unit';
        qd.SBQQ__ProcessingOrder__c = 5;
        
        INSERT qd;
    }
}