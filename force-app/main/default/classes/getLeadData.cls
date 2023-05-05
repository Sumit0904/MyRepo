public with sharing class getLeadData {
    @Auraenabled()
    public static list<Lead>getLead(){
         List<Lead> lList =[SELECT Name,Phone,Email,CreatedDate FROM lead Order By CreatedDate DESC LIMIT 10];
          System.debug('Fetching the lead records'+ lList);
        return lList;
      
    }

}