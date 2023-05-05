public with sharing class LeaddataTable {
    @AuraEnabled
    public static list<Lead> getleads(){
        list<Lead> lList = [ SELECT Name,Phone,Email,CreatedDate FROM Lead Order By CreatedDate DESC LIMIT 10 ];
        return lList;
    }
    public static String getTask(String name,String Subject,String description,String LeadId){
        System.debug('Params'+ Description +'Subject'+Subject+'Name'+name);
        List<Lead> LeadList = [Select Id,Name,Email,CreatedDate,Phone from Lead where Id=:LeadId];
        List<Task> createtask = new List<Task>();
        lead ldata = new lead();
        String userId = UserInfo.getUserId();
        List<User> u = [Select Id,Name,Email from User where Id=:userId];
        List<Lead> updateLead = new List<Lead>();
          if(!String.isBlank(LeadId) && LeadId !=null ){ 
        Task tsk = new task();
        tsk.OwnerId = userId;
        tsk.WhoId=LeadId;
            tsk.Subject = subject;
            tsk.Description = description;
            tsk.Status = 'Completed';
        createTask.add(tsk);
          }
        
        if(createTask.size()>0){
        insert createtask;
            if(u[0].Email !='' && u[0].Email !=null){
                String plainTextBody = ' ';
                 plainTextBody += 'Lead Log a Call has been created successfully with the below details :- \n ';
                plainTextBody +=' Name :- '+leadList[0].Name+' \n';
                 plainTextBody += ' Phone :- '+leadList[0].Phone+' \n';
                plainTextBody += ' Email :-'+leadList[0].Email+' \n';
                 Messaging.SingleEmailMessage singleMsg = new Messaging.SingleEmailMessage();
                String[] toAddresses = new String[]{u[0].Email};
                     singleMsg.setToAddresses(toAddresses);
                singleMsg.setSubject('Lead log a call has been created successfully');
                singleMsg.setPlainTextBody(plainTextBody);
                Messaging.sendEmail(new Messaging.SingleEmailMessage[] { singleMsg });
            }
            if(leadList.size()>0){
                ldata.Id = leadList[0].Id;
                    ldata.Email_Send_Status__c = 'Success';
                 ldata.Log_a_Call_Email_Send_Time__c = leadList[0].CreatedDate;
               updateLead.add(ldata);
                 }
             if(updateLead.size()>0){
                update updateLead;
            }
    
    }
        return 'hi';
 

    }
}