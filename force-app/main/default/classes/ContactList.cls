public class ContactList {
   @AuraEnabled
    public static List<Contact> getContactList(String accountId){
        List<Contact> contactList = new List<Contact>([SELECT FirstName, LastName, Id, Name, Email, Phone 
                                                       From Contact 
                                                       WHERE Email !=null
                                                       AND AccountId = :accountId]);
        return contactList;
    }
    
    @AuraEnabled
      public static Contact createContactSingle(Contact con){
        insert con;
        return con;
    }
}