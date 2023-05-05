public class sendSingleEmail {
    public static void sendSinglemethod(){
        Messaging.SingleEmailMessage  mymail= new  Messaging.SingleEmailMessage();
        String[] toaddresses = new String[]{'sumit.telgote94@gmail.com'};
            String[] ccaddresses = new String[]{'sumit.telgote94@gmail.com'};
                String[] bccaddresses = new String[]{'sumit.telgote94@gmail.com'};
                    mymail.setToAddresses(toaddresses);
        mymail.setCcAddresses(ccaddresses);
        mymail.setBccAddresses(bccaddresses);
        mymail.setReplyTo('theincrediblethings0904@gmail.com');
        mymail.setSenderDisplayName('Salesforce Support');
        mymail.setSubject('An email from Salesforce');
        mymail.setPlainTextBody('This email has been sent through Apex');
       
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mymail });
        
        
    }
    
}