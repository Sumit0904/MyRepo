public class MessangingUtility {
    public static void SendReminderNotificationtoContacts(){
        Map<Id,Contact> mapcontacts = new Map<Id,Contact>([SELECT Id,firstname,lastname,Email,accountId from Contact 
           where accountId = null and Email!= null limit 10]);
        List<ID> contactIds = new List<ID>();
        if(!mapcontacts.isEmpty()){
            contactIds.AddAll(mapcontacts.keySet());
        }
        if(!contactIds.isEmpty()){
            Messaging.MassEmailMessage massEmail = new Messaging.MassEmailMessage();
            EmailTemplate template =[SELECT Id,name,isActive from EmailTemplate
                                    where name ='Update account Details Notification Template'];
            if(template.Id!=null && template.IsActive==true){
                massEmail.setTargetObjectIds(contactIds);
                massEmail.setTemplateId(template.Id);
                Messaging.sendEmail(new Messaging.MassEmailMessage[]{massEmail});
            }
        }
           
    }
    

}