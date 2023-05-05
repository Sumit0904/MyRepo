public class UpdateDescription{
    list<Account> acclist = [Select id,name,Description from Account where Name like '%ApexHR9%'];
   list<Account> AccUpdated = new List<Account>();

}