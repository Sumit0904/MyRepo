Global class AccountUpdateClass implements database.batchable<SObject>{
   Global Database.Querylocator start(Database.batchableContext bContext){
    String accountQuery = 'Select id,name,phone,fax,Industry,website from Account';
    return Database.getQuerylocator(accountQuery);
   }
   Global void Execute(Database.batchableContext bContext,List<SObject> recordtoProcess){
    if(recordtoProcess.isEmpty()){
        List<Account> accounttoUpdate = new List<Account>();
        for(SObject sobjerecord :recordtoProcess){
            Account accRecord = (Account)sobjerecord;
            accRecord.Website = 'www.forsysinc.com';
            accRecord.Phone = '55555555';
            accRecord.fax = '888888888';
            accRecord.Sic = 'Manufacturing';
            accRecord.Industry = 'Insurance';
            accounttoUpdate.add(accRecord);
        }
        if(!accounttoUpdate.isEmpty()){
            Update accounttoUpdate;
        }
    }
   }
   Global void finish(Database.BatchableContext bContext){
    System.debug('Batch Job Id is....'+bContext.getjobId());
    AsyncApexJob jobDetails = [Select id,status,totaljobitems,jobitemsProcessed,NumberofErrors,createdby.email from AsyncApexJob where id =:bContext.getjobId()];
   }
}