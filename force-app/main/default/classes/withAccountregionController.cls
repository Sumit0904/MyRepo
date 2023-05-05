public class withAccountregionController {
    public Account acc{get;set;}
    public Boolean ShowPhone{get;set;}
    public withAccountregionController(){
        acc = new Account();
        ShowPhone = false;
    }
    public PageReference priorityChanged(){
        if(acc.CustomerPriority__c == 'High'){
            ShowPhone = true;
            
        }else {
            ShowPhone = false;
        }
        return null;
    }
    
    
    
}