public class DatabaseUtility {
    public static void getallleadrecords(){
        list<lead>leadlist = [SELECT Id,firstname,lastname,company,status,email,phone,fax from lead];
        System.debug('Collection Size is'+leadlist.size());
        if(!leadlist.isEmpty()){
            for(lead ld:leadlist){
                System.debug('lead id..:'+ld.Id);
                System.debug('lead id..:'+ld.firstname);
                System.debug('lead id..:'+ld.lastname);
                System.debug('lead id..:'+ld.company);
                System.debug('lead id..:'+ld.status);
                System.debug('lead id..:'+ld.email);
                System.debug('lead id..:'+ld.phone);
                System.debug('lead id..:'+ld.fax);
            }
        }
    }

}