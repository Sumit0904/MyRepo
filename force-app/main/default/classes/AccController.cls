public class AccController {
    @AuraEnabled
    public static list<Account> fetchAccounts(){
        // Query 10 Account Records
        List<Account> accList = [Select Id,Name,BillingState,website,Phone,Industry from Account LIMIT 10];
        //Return List of Accounts
        return accList;
    }

}