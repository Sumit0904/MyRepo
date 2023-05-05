public class ActionregionController {
    public Account acc{get;set;}
    public Boolean showphone{get;set;}
    public ActionregionController(){
        acc = new Account();
        showphone = false;
    }
    public Pagereference priorityChanged(){
        if(acc.CustomerPriority__c =='High'){
            showphone =true;
        }
        else{
            showphone=false;
        }
        return null;
    }

}