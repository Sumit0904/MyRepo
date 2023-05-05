trigger AccountTrigger1 on Account (before insert) {
    if(trigger.isinsert){
        if(trigger.isbefore){
            AccountriggerHandler.UpdateRating(Trigger.new);
        }
    }

}