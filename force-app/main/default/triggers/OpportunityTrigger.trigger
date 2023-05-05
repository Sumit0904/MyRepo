trigger OpportunityTrigger on Opportunity (before insert) {
    if(trigger.isinsert){
        if(trigger.isbefore){
            OpportunityTriggerhandler.UpdateDescription(trigger.new);
        }
            
        
    }

}