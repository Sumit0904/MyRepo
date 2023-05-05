public class leadActionPollerController {
    public List<Lead> lstlead {get;set;}
    public void getallunconvertedleadrecord(){
        lstlead = new list<lead>();
        lstlead =[select id,firstname,lastname,email,company,title,rating,industry,status,phone,fax from lead where isconverted = false LIMIT 10];
    }
    

}