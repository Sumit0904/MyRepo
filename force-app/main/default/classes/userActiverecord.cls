public class userActiverecord {
    public static void getuserrecord(){
        list<User> activeuser = [SELECT id,firstname,lastname,isactive,profile.name,email from user where profile.name = 'Custom: Sales Profile' AND isActive=true];
        System.debug('Record Succesfully'+activeuser);
    }

}