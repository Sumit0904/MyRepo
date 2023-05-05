trigger Countofcontact on Contact (after insert,after delete, after undelete) {
    list<Id>Idlist = new list<Id>();
    if(trigger.isinsert && trigger.isUndelete){
        for(contact con:trigger.new){
            Idlist.add(con.accountId);
        }
        
        
    }
    if(Trigger.isDelete){
        for(contact con1:trigger.old){
            Idlist.add(con1.accountId); 
        }
    }
    list<Account> acclist = new list<Account>();
    
}