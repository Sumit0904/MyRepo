public class CreateBulkrecord {
    public static void insertacct(){
        for(integer counter = 1;counter <=10;counter++){
            Account acc = new Account();
            acc.Name = 'ApexHR'+counter;
            insert acc;
            System.debug('Account record created successfully'+acc);
        }
    }
}