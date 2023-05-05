trigger SendEmailRelease on Release__c (after insert) {
    List<Messaging.SingleEmailMessage> Mails = new List<Messaging.SingleEmailMessage>();
    for(Release__c r:trigger.new){
        Messaging.SingleEmailMessage  mail = new Messaging.SingleEmailMessage();
        // Avoid to hit the max number of emails
        mail.setTargetObjectId( UserInfo.getUserId() );
        mail.setSaveAsActivity( false );
        
        List<String> sendTo = new List<String>();
        sendTo.add(r.Client_Manager_Email_ID__c);
        sendTo.add(r.Project_Manager_Email__c);
         mail.setToAddresses(sendTo);
        
        mail.setSubject('New Release is Created '+ r.id);
        String body = 'Release ID: '+ r.Name + ',' + 'Release Date: ' + r.Date__c + ',' + 'Status during Release: ' + r.Status__c ;
        mail.setHtmlBody(body);
        mails.add(mail);
    }
    Messaging.sendEmail(mails);

}