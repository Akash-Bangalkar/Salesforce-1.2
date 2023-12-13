public with sharing class MetadataListController {
    @AuraEnabled(cacheable=true)
    public static List<SetupAuditTrail> getMetadataList(String timeFrame) {
        //return [SELECT Section, Action, CreatedBy.Name, CreatedDate FROM SetupAuditTrail];
        String referenceTime;
        // Construct the SOQL query based on selected time range
            if (timeFrame == 'LAST_N_DAYS:1') {
                referenceTime = 'LAST_N_DAYS:1';
            } else if (timeFrame == 'Last 2 Days') {
                referenceTime = 'LAST_N_DAYS:2';
            } else if (timeFrame == 'Last 1 Week') {
                referenceTime = 'LAST_N_WEEKS:1';
            } else if (timeFrame == 'Last 1 Month') {
                referenceTime = 'LAST_N_MONTHS:1';
            } else if (timeFrame == 'Last 6 Months') {
                referenceTime = 'LAST_N_MONTHS:6';
            } else if (timeFrame == 'Last 1 Year') {
                referenceTime = 'LAST_N_YEARS:1';
            } else {
                referenceTime = null;
            }
        
        String soqlQuery = 'SELECT Section, Action, CreatedBy.Name, CreatedDate FROM SetupAuditTrail WHERE CreatedDate >= referenceTime';
        
        return Database.query(soqlQuery);
        // Add conditions for the selected user if provided
        /*
        if (selectedUser != null) {
            soqlQuery += ' AND CreatedBy.Name = \'' + selectedUser + '\'';
        }
        
        try {
            List<SetupAuditTrail> results = Database.query(soqlQuery);
            return results;
        } catch (Exception e) {
            // Log detailed information about the exception
            System.debug('Exception Message: ' + e.getMessage());
            System.debug('Exception Type: ' + e.getTypeName());
            System.debug('Exception Stack Trace: ' + e.getStackTraceString());

            // Throw the exception with a generic message to the client
            throw new AuraHandledException('Error retrieving metadata list. Please check logs for details.');
        }
        */
    }

    @AuraEnabled(cacheable=true)
    public static List<SetupAuditTrail> getMetadataRecords(Integer days) {
        if (days == null || days < 0) {
            return [SELECT Section, Action, CreatedBy.Name, CreatedDate FROM SetupAuditTrail ORDER BY CreatedDate DESC];
        } else {
            Date startDate = Date.today().addDays(-days);
            return [SELECT Section, Action, CreatedBy.Name, CreatedDate FROM SetupAuditTrail WHERE CreatedDate >= :startDate ORDER BY CreatedDate DESC];
        }
    }
}