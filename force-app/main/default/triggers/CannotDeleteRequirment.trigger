trigger CannotDeleteRequirment on Requirement__c (before delete) {
    for (Requirement__c req : Trigger.old) {
        if (req.status__c == 'approved') {
           Trigger.oldMap.get(req.Id).addError('Cannot Delete Requirement Record Because Requirement Status is Approved');
        }
    }

}