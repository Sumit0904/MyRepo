public class RestoreContactByStringCharacters {
    public static void getrecord(String Startingchar){
        Startingchar +='%';
       List<Contact> contactlist = [SELECT Id,lastname from Contact where Lastname Like:Startingchar AND isDeleted = true ALL Rows]; 
        
        if(!ContactList.isEmpty()){
            Undelete contactlist;
            System.debug('Delete Contact'+contactlist.size());
            
        }
    }

}