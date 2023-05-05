@istest(seeAllData=true)
public class EmailTaskTest {
     public static testmethod void remindEmployee(){
          
       List<Task_Assigned__c> taask = [SELECT ID, Name, Status__c, Employee_Email_ID__c, Due_Date__c  
                                       FROM Task_Assigned__c WHERE Status__c = 'In progress' LIMIT 1];

        Test.StartTest();
        Emailtask.remindEmployee(taask);
        Test.stopTest();
    }

}