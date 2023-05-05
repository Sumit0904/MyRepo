public class UpdateAccountrecord {
    public static void UpdateAccrecord(){
        List<Account> lstaccount =[SELECT id,name,rating,industry from account where rating = 'Hot'];
        if(!lstaccount.isEmpty()){
            for(Account acc:lstaccount){
                acc.Industry ='Finance';
            }
            update lstaccount;
            System.debug('account record update'+lstaccount);
        }
    }

}