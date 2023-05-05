public class MyDemo1 {
    public static void Updateopps(){
        List<opportunity> oppList =[SELECT id,Name,StageName,CloseDate from Opportunity where createdDate = This_Year];
        for(Opportunity opp :oppList){
            if(opp.StageName == 'Closed Won'){
                opp.Description = 'Opportunity is closed Won';
            }
            else if(opp.stageName == 'Closed Lost'){
                opp.Description = 'opportunity is closed Lost';
            }
            
        }
        if(!oppList.isEmpty()){
            update oppList;
            system.debug('result'+oppList);
        }
        
    }
    
}