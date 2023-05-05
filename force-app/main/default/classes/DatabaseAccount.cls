public class DatabaseAccount {
    public static void getallaccountrecord(){
        list<Account>acclist = [SELECT id,name,rating,industry from account ALL ROWS];
        System.debug('Collection size...'+acclist.size());
    }

}