public class InsertAccount {
    public static void createAccount(){
        Account acc = new Account();
        acc.name = 'Sample Apex Account Record';
        acc.rating = 'hot';
        acc.industry = 'Banking';
        acc.annualrevenue = 500000;
        acc.Website = 'www.shreya@gmail.com';
        acc.Active__c = 'Yes';
        insert acc;
        if(acc.Id!=null){
            System.debug('Account record Inserted with id'+ acc.id);
        }
    }

}