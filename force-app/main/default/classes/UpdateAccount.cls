public class UpdateAccount {
    public static void updateAccountrecord(String accName,String AccNum){
        try{
             Account acc = [SELECT Id,Name,AccountNumber,Phone,Industry from Account where name=:accName];
        acc.AccountNumber = AccNum;
        update acc;
        }
        catch(Exception e){
            System.debug('Exceptionnnnn=>'+e.getMessage());
        }
      
    }

}