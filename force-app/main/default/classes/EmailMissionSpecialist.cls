public class EmailMissionSpecialist {
    public static void sendEmails(String Subject,String Address,String Body){
        Messaging.SingleEmailMessage  mail = new Messaging.SingleEmailMessage();
        String[] toaddress = new String[]{Address};
         mail.setToAddresses(toaddress);
        mail.setSubject(Subject);
        mail.setPlainTextBody(body);
        Messaging.SendEmailResult[] results = Messaging.sendEmail(
            new Messaging.SingleEmailMessage[] { mail });
        inspectResults(results);
    }
        private static Boolean inspectResults(Messaging.SendEmailResult[] results) {
            Boolean sendResult = true;
            // sendEmail returns an array of result objects.
            // Iterate through the list to inspect results. 
            // In this class, the methods send only one email, 
            // so we should have only one result.
            for (Messaging.SendEmailResult res : results) {
                if (res.isSuccess()) {
                    System.debug('Email sent successfully');
                }
                else {
                    sendResult = false;
                    System.debug('The following errors occurred: ' + res.getErrors());                 
                }
            }
            return sendResult;
        }

}