trigger AccountTrigger on Account (before insert) {
    if(trigger.isbefore){
        if(trigger.isinsert){
        AccountTriggerHandler.updaterating(trigger.new);
    }
    }
    

}