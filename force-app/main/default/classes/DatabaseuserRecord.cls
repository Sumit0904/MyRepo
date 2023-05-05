public class DatabaseuserRecord {
    public static void getuserrecords(){
        for(user u:[SELECT id,firstname,lastname,email,username,profile.name,isactive from user])
        {
            System.debug('User Record is..:'+u);
        }
    }
}