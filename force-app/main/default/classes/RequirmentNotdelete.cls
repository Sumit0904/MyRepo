@isTest(SeeAllData=false)
public class RequirmentNotdelete {
    public static testmethod void donotdelete(){
        Client__c c = new Client__c();
        c.Name = 'Test Client';
        insert c;
       Project__c p = new Project__c();
        p.Name = 'Test Project';
        p.Client__c =c.Id;
        insert p;
        Requirement__c r = new Requirement__c(); 
        r.Name = 'Test requirment';
        r.Project__c = p.Id;
        r.Status__c = 'Approved';
        insert r;
        
        Test.startTest();
        
        Database.DeleteResult result = Database.delete(r, false);
        Test.stopTest();
        
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('Cannot Delete Requirement Record Because Requirement Status is Approved',result.getErrors()[0].getMessage());
    }

}