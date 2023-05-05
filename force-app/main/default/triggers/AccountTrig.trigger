trigger AccountTrig on Account (after update) {
    set<Id> newsets = new set<Id>();
    for(Account acc:trigger.new){
        newsets.add(acc.Id);
        
    }
    list<Contact> conlist = [SELECT id,accountid from contact where accountid=:newsets];
    List<Contact> updatelistofcontact = new List<contact>();
    for(Account acc1:trigger.new){
        for(contact con:conlist){
            con.mailingStreet = acc1.BillingStreet;
            updatelistofcontact.add(con);
        }
    }
}