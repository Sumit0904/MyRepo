public class OpportunityTriggerhandler {
    public static void UpdateDescription(List<Opportunity>opplist){
        for(Opportunity opp:opplist){
            if(opp.Amount!=null && opp.Amount>100000){
                opp.Description = 'Hot opportunity';
            }
                
        }
        
    }

}