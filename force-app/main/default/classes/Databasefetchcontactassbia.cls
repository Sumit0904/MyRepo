public class Databasefetchcontactassbia {
    public static void getcontactbyindustryname(String Industryname){
        if(Industryname!= null){
             Map<Id,Account> mapaccounts = new Map<Id,Account>([SELECT id,name,industry from Account where industry=:Industryname ]);
        System.debug('Collection size...=>'+mapaccounts);
        if(!mapaccounts.keyset().isEmpty()){
        }
       list<Contact>lstcontacts = [SELECT id,name,lastname,phone,email,fax,accountid from contact where accountid IN:mapaccounts.keyset()];
            if(!lstcontacts.isEmpty()){
                System.debug('Contacts Collection....=>'+lstcontacts.size());
                for(contact con:lstcontacts){
                    System.debug('Contact Record'+con);
                }
            }
        }
    }
}