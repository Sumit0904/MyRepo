public class Getallleadrecords {
    public static void getallleadsrecordss(){
        List<Lead>leadlist = [SELECT id,firstname,lastname,company,status,email,phone,fax from Lead];
        System.debug('finally you got the leads'+leadlist);
        System.debug('Collection is'+leadlist.size());
    }
    public static void getAccountrecord(){
        List<Account>acclist = [SELECT id,rating from Account];
        System.debug('Account collection'+acclist);
        System.debug('Account collection'+acclist.size());
    }

}