trigger Preventinsertionrecord on Account (before insert) {
 		Set<String> newset = new Set<String>();
    for(Account acc:trigger.new){
        newset.add(acc.Name);
    }
    list<Account> acclist =[SELECT id,name from Account where name in :newset];
    Map<String,Account> newMap = new Map<String,Account>();
    for(Account acc1:acclist){
        newMap.put(acc1.Name,acc1);
     }
    for(Account acc2:trigger.new){
        if(newMap.containskey(acc2.name)){
            acc2.name.adderror('Account name already Exist' );
        }
    }
    
}