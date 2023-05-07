public class AccountwithRelContacts {
    @AuraEnabled(cacheable = true)
        public static list<Contact> getcontacts(){
            List<Contact> contacts =[SELECT Id,Name, Phone, Email, AccountId FROM Contact where phone != null limit 50];
            return contacts;

        
    }
    
   
}