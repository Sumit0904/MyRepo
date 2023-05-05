public class SearchPageController {
    Public String SearchText{get;set;}
    Public PageReference searchAccounts(){
        PageReference PgRef = new PageReference('/apex/targetPage?name='+SearchText);  
        PgRef.setRedirect(true);
        return PgRef;
    }
    
    
}