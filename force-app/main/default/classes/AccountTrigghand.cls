public class AccountTrigghand {
    // create  related contact when account is created
    public static void relatedcontact(List<Account> acclist){
        List<contact> conlist = new List<Contact>();
        for(Account acc :acclist){
            contact con = new Contact();
            con.FirstName = acc.Name + 'FN';
            con.LastName = acc.Name + 'LN';
            con.AccountId = acc.Id;
            conlist.add(con);
            
        }
        if(conlist.isEmpty()){
            insert conlist;
        }
    }
        
    
}