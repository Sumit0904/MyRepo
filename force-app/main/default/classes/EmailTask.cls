public class EmailTask {
    public static void remindEmployee(List<Task_Assigned__c> task){
        
        for(Task_Assigned__c t: task){
        Messaging.SingleEmailMessage message = new Messaging.SingleEmailMessage();
      
        List<String> sendTo = new List<String>();
        sendTo.add(t.Employee_Email_ID__c);	    
        message.toaddresses = (sendTo); 
        message.optoutpolicy = 'FILTER';
        message.subject = 'Assigned Task is Incomplete';
        message.plaintextbody = 'Assigned Task is Incomplete' + ' Task Name:' + t.Name + ', Status:' + t.Status__c + ', Due Date: ' + t.Due_Date__c;
        Messaging.SingleEmailMessage[] messages = new List<Messaging.SingleEmailMessage> {message};
        Messaging.SendEmailResult[] results = Messaging.sendEmail(messages);
        
        if (results[0].success){
            System.debug('Sucessfull');
        }
        else{
            System.debug('Failed' + results[0].errors[0].message);
        }
        }
    }

}