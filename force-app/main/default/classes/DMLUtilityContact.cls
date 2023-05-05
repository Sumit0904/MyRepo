public with sharing class DMLUtilityContact {
    public static void insertbulkrecord(integer maxrecord){{
        if(maxrecord > 0){
            List<Contact> conlist = new List<Contact>();
            for(integer a=1;a<=maxrecord;a++){
                contact con = new Contact();
                con.firstName ='bulkrecord';
                con.lastName ='Mahesh'+a;
                con.email ='bulkrecord'+a+'@gmail.com';
                if(a!=198)
                {
                    con.phone='9096949663';
                }
                conlist.add(con);
            }
            if(!conlist.isEmpty()){
                insert conlist;
                System.debug('bulkRecord'+conlist);
            }
        }
    }

    }
}