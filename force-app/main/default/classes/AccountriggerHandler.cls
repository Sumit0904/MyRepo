public class AccountriggerHandler {
    public static void UpdateRating(List<Account> acclist){
        for(Account acc:acclist){
            if(acc.Industry!=null && acc.Industry=='Media'){
                acc.Rating = 'Hot';
            }
        }
    }

}