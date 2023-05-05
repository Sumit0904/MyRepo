public class SourcePageController {
    public PageReference GotoTargetPage(){
        PageReference pgref = new PageReference('/apex/targetPage');
        pgref.setRedirect(true);
        return pgref;
    }

}