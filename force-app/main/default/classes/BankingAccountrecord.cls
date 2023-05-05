public class BankingAccountrecord {
    public static void getaccountrecord(){
         list<Account> lstaccounts = [SELECT id,name,rating,industry,annualrevenue,phone,fax,active__c from Account where industry ='Banking'];
  System.debug('Collection size...:=>'+lstaccounts);
    }
   

}