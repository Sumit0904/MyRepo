@isTest
public class Test_ActionregionController {
    public static testmethod void testdata(){
        Account acct = new Account();
        acct.CustomerPriority__c ='high';
        
        ActionregionController actr = new ActionregionController();
		actr.priorityChanged();  
        actr.showphone = true;
    }

}