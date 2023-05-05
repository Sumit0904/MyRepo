public class DeleteContactRecord {
    public static void removeContactbyStartingCharacter(String startingChar){
        startingChar +='%';
        List<Contact> conlist = [SELECT Id,lastName from Contact where lastName like:startingChar];
        if(!conlist.isEmpty()){
            Delete conlist;
            System.debug('Delete Contact'+conlist.size());
            
        }
        
    }

}