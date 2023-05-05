public class DeletedRecord {
    public static void getdeleetdrecord(){
        list<Account>acclist = [SELECT id,name,rating,industry,isdeleted,active__c from Account where isdeleted = true ALL ROWS];
        System.debug('Record Successfully'+acclist);
          System.debug('Record Successfully'+acclist.size());
    }

}