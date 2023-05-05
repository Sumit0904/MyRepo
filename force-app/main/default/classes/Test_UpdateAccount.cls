@isTest
public class Test_UpdateAccount {
      public static testmethod void accountupdatetestrecord(){
          Account ac = new Account();
          ac.Name = 'Edge Communications';
          ac.Industry = 'Electronics';
          insert ac;
          test.startTest();
        
          UpdateAccount.updateAccountrecord('Edge Communications','CD451796');
        
          
          test.stopTest();
    }

}