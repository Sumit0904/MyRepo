public class ApexClassNew {
    public static void mymethod(Account acc){
		System.debug('inside Method 1');
        if(acc.Name == 'other Account')
            acc.Website ='';
        update acc;
        
    }
    public static void mymethod2(List<Account>accounts){
        System.debug('Inside Second Method');
    }
}