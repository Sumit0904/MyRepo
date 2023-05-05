trigger ContactEmailTrigger on Contact (before insert) {
     // Access all emails in the list 
    List<Messaging.SingleEmailMessage> mailList = new List<Messaging.SingleEmailMessage>();
    for(Contact mycontact:trigger.new){
        if(mycontact.Email!=null && mycontact.FirstName!=null){
            
      // initialize the single send email id object
  			 Messaging.SingleEmailMessage newmail = new  Messaging.SingleEmailMessage();
            List<String> sendToAddressesList = new List<String>();
            sendToAddressesList.add(mycontact.Email);
            newmail.setToAddresses(sendToAddressesList);
            newMail.setSubject('Your contact detail have been added');
            String body = 'Hello' +mycontact.firstName+ ',';
            body += 'Your details have been added and your contact has been created.';  
            newMail.setHtmlBody(body);
            // Add the email to the list
           mailList.add(newMail);
            
        }
        
    }
    // Send all emails in the list
  Messaging.sendEmail(mailList);
    System.debug('Email Size=>'+mailList);

}