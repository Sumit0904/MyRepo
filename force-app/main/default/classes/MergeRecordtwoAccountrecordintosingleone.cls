public class MergeRecordtwoAccountrecordintosingleone {
    public static void mergeaccountrecord(){
        Account acc1 = [SELECT Id,name,rating,industry from Account where name like '%250' Limit 1];
        Account acc2 = [SELECT Id,name,rating,industry from Account where name like '%249' Limit 1];
        System.debug('Account record is 250'+acc1);
        System.debug('Account record is 249'+acc2);
        if(acc1!=Null && acc2!=Null){
            Merge acc1 acc2;
        }
        
    }
    
}