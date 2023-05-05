public class CreateAccountRecord {
    public static void createAccount(){
        list<Account> acclist = new list<Account>();
        for(integer i =1;i<=20;i++){
          Account acc = new Account();
        acc.Name = 'ABC';
        acc.Rating = 'Hot';
         acclist.add(acc); 
            insert acc;
        System.debug('"Account record has been Created'+ acc);  
        }
        
    }
}