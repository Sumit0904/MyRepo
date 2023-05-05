trigger Updatepone on Contact (after update){
    Map<Id,String> newMap = new Map<Id,String>();
        for(contact con:trigger.new){
            if(trigger.oldMap.get(con.id).mailingStreet!= con.mailingstreet){
                newMap.put(con.AccountId, con.MailingStreet);
            }
         }
    list<Account> newlist = [SELECT id,BillingStreet from Account where id in: newMap.keySet()];
    for(Account acc: newlist){
        acc.BillingStreet = newMap.get(acc.Id);
    }
    update newlist;
}