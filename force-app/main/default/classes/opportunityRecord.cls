public class opportunityRecord {
    public static void getopportunity(){
        list<opportunity> opplist = [SELECT id,name,amount,stagename,closedate from opportunity where stagename = 'Prospecting' and amount >15000];
        System.debug('opportunity record'+opplist);
    }

}