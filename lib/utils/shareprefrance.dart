
import 'package:shared_preferences/shared_preferences.dart';

class UserPreference{
   static SharedPreferences? _preferences;
    static const String userName = "user_name";
   static const String mobile = "mobile_no";
   static const String email = "email";


   static Future init() async {
     _preferences = await SharedPreferences.getInstance();
   }


   void setStringPref(String key,String value){
     _preferences!.setString(key, value);
   }

    getStringPref(String key){
   return  _preferences!.getString(key);
   }



}