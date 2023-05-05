public class leadrecordClass {
    public static void getleadrecord(){
        list<lead>lstlead = [SELECT id,name,lastname,email,company,status,phone,fax from lead where status ='closed-converted'];
        System.debug('Lead record Successfully'+ lstlead.size());
    }
}