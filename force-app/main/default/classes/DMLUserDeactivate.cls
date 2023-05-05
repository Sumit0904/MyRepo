public class DMLUserDeactivate {
    public static void removeuser(String uName){
        if(uName!= Null){
            User usertodeactivate = [SELECT id,username,isActive from user where username=:uName LIMIT 1];
            if(usertodeactivate!= null){
                usertodeactivate.IsActive = false;
            update usertodeactivate;
            }
          
        }
    }

}