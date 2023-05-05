public class ShowAllAccountspicklistController {
    public  list<Selectoption> lstoptions{get;set;}
    public  list<Contact> lstContacts{get;set;}
    public string selectedAccountId {get;set;}
    
    public ShowAllAccountspicklistController(){
        List<Account> lstAccounts =[SELECT Id,name from Account order by name];
        lstoptions = new list<Selectoption>();
        if(!lstAccounts.isEmpty()){
            lstoptions.add(new Selectoption('','-----None-----'));
            for(Account acc:lstAccounts){                                  
                lstoptions.add(new Selectoption(acc.id,acc.name));
            }
        }
    }
    public void getrelatedContacts(){
        lstContacts = new List<Contact>();
        if(selectedAccountId !=null){
            lstContacts = [SELECT id,lastname,firstname,email,phone,fax,
                           title,accountid from contact where accountid=:selectedAccountId]; 
        }
        
    }
    
}