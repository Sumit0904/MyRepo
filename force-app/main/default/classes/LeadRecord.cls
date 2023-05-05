public class LeadRecord {
    public static void insertleadrecord(Integer maxrecord){
        if(maxrecord>0){
            List<Lead> leadList = new List<Lead>();
            for(Integer i=0;i<=maxrecord;i++){
                Lead leadObj = new Lead();
                leadObj.FirstName = 'Shreyaaa';
                leadObj.lastName = 'Patel'+i;
                leadobj.Company = 'ApexHour'+ i;
                leadobj.City='Hyderabad';
                leadobj.Email='Shreya'+i+'@gmail.com';
                if(i!=448){
                    leadobj.Country ='India';
                }
                leadList.add(leadObj);
                
            }
            if(!leadList.isEmpty()){
                Database.SaveResult[] results = Database.insert(leadList,false);
                for(Database.SaveResult res:results){
                    if(res.isSuccess()){
                        System.debug('Record has been inserted succesfully.Record Id '+res.getID());
                    }
                    else
                    {
                        for(Database.Error err:res.getErrors()){
                             System.debug('Error Message is'+err.getMessage());
                            System.debug('Error Message is'+err.getStatusCode());
                            System.debug('Error Message is'+err.GetFields());
                            
                        }
                    }
                }
            }
        }
        
    }

}