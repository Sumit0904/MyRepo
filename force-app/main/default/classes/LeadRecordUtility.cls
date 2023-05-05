public class LeadRecordUtility {
    public static void getleadrecord(){
        list<lead> leadlist = [SELECT id,name,lastname,email,company,phone,fax,status from lead for update];
        System.debug('Collection size...:=>'+leadlist);
    }

}