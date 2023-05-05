public class UpdatePhoneNumber{
    public static void UpdatePhonewithAccount(){
        List<Account> acclist = [SELECT Id,Name from Account where createdDate = This_Year];
        if(!acclist.isEmpty()){
            for(Account acc:acclist){
                acc.Phone ='123456';
            }
        }
        if(!acclist.isEmpty()){
            Update acclist;
            System.debug('result'+acclist);
        }
    }

}