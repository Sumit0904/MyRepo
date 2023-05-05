public class AccountController1 {
    @auraEnabled
    public static List<Account> fetchAccounts(){
        // Query of 10 Account Records
        list<Account> acctList = [Select Id, Name, BillingState, 
                                    Website, Phone, Industry, Type from Account LIMIT 10];
        // return list of Accounts
        return acctList;
        
    }

}