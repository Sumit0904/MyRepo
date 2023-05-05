public class MyDemo {
    public static void createopponAccount(){
        List<Account> acclist = new List<Account>();
        acclist = [SELECT Id,Name from Account where createddate = This_Year];
        List<Opportunity> opptobecreated = new List<Opportunity>();
        for(Account acc:acclist){
            Opportunity opp = new Opportunity();
            opp.name = acc.Name;
            opp.CloseDate = System.today();
            opp.StageName ='Prospecting';
            opp.AccountId = acc.Id;
           opptobecreated.add(opp); 
            
        }
        if(opptobecreated.size()>0){
        insert opptobecreated;
            System.debug('result'+opptobecreated);
    }
    
    }

}