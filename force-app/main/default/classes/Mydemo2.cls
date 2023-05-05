public class Mydemo2 {
    public static void countofcontacts(){ 
        //Parent to child
        list<Account> acclist = [SELECT id,Name,Phone,(SELECT id,Firstname,LastName,Phone from Contacts) from Account where createddate =This_Year];
        if(!acclist.isEmpty()){
            for(Account acc:acclist){
                acc.Phone = '1234567';
                
                for(Contact con :acc.Contacts){
                    System.debug('Result'+con);
                }
            }
        }
        
    }

}