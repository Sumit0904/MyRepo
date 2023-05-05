public class DmlUtilityCaseRecord {
    public static void insertcaserecord(){
        List<Case> caselist = new List<Case>();
        for(Case newcase :[SELECT Id,Status,priority from case where status ='New']){
            newcase.priority ='high';
            caselist.add(newcase);
        }
        case cs = new case();
        cs.Status = 'New';
        cs.Priority= 'high';
        cs.Origin ='Phone';
        cs.Type ='Mechanical';
        cs.Subject = 'my printer is not Working as Excpected';
        cs.Reason = 'performance';
        caselist.add(cs);
        if(!caselist.isEmpty()){
            Database.UpsertResult[] results = Database.upsert(caselist,false);
            for(Database.UpsertResult res: results){
                if(res.isSuccess()){
                    If(res.isCreated()){
                        System.debug('Record has been inserted Successfully');
                        System.debug(''+res.getId());
                        
                    }
                    else{
                        System.debug('Record Updated Successfully'+res.getId());
                    }
                }
                else{
                    for(Database.Error err:res.getErrors()){
                        System.debug('Error Message is'+err.getMessage());
                        System.debug('Error Message is'+err.getFields());
                        System.debug('Error Message is'+err.GetStatusCode());
                        
                    }
                }
                System.debug('@@@@@@@@@@@@@@@@@@');
            }
        }
    }

}