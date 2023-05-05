public class AccountTriggerHandler {
    public static void updaterating(List<Account>acclist){
        for(Account acc:acclist){
            if(acc.Industry == null){
                acc.AddError('Please Populate Industry');
            }
            else if(acc.Industry != null && acc.Industry == 'Media'){
                acc.Rating ='Hot';
            }else{
                acc.Rating = 'Cold';
            }
        }
        
    }
    public static void UpdatePhoneDescription(List<Account> newlist,Map<Id,Account> oldMap){
        for(Account acc:newlist){
            if(oldMap !=null &&  acc.Phone!= oldMap.get(acc.Id).Phone){
                acc.addError('you cannot make phone as a blank');{
                     acc.Description = 'Phone is modified '+ acc.Phone; 
                }
               
            }
        }
    }
        
}