public class CaseAssignee {
	public static void changeOwner(List<Case> csList, Map<ID, Case> oldMap)
    {
        for(Case cs:csList)
        {
            if(cs.Priority == 'High')
            {
                if(oldMap == NULL)
                {
                    cs.OwnerId = '0052t000000xFVhAAM';
                }
                else if(cs.Priority != oldMap.get(cs.Id).Priority)
                {
                    cs.OwnerId = '0052t000000xFVhAAM';
                }
            }
            else if(cs.Priority == 'Medium')
            {
                if(oldMap == NULL)
                {
                    cs.OwnerId = '0052t000001Ku7YAAS';
                }
                else if(cs.Priority != oldMap.get(cs.Id).Priority)
                {
                    cs.OwnerId = '0052t000001Ku7YAAS';
                }
            }            
        }
    }
}