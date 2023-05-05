@Istest
public class Test_ApexClassNew {
    @testSetup static void datasetup(){
        Account acc1 = new Account();
        acc1.name = 'other Account';
         Account acc2 = new Account();
        acc2.name = 'Test Account 2';
        acc2.Website = 'abc@gmail.com';
        insert acc1;
        insert acc2;
	}
    @istest static void test_method1(){
        Account acc = [SELECT id,name from Account where name = 'other Account'];
        ApexClassNew.mymethod(acc);
    }
      @istest static void test_method2(){
        Account accounts = [SELECT id,name from Account where name = 'other Account 2'];
        ApexClassNew.mymethod(accounts);
    }
}