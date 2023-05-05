public class SearchAccountController {
    Public String searchText{get;set;}
        public list<Account> lstAccounts{get;set;}
    public void searchAccounts(){
        lstAccounts = new list<Account>();
        if(searchText!=null && searchText!=''){
            searchText+='%';
            lstAccounts = [SELECT Id,name,rating,industry,Annualrevenue,
                           type,active__c from Account where name like:searchText];
        }
    }

}