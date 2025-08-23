import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
static late SharedPreferences _pref ;
static Future<SharedPreferences> init()async {
  return _pref = await SharedPreferences.getInstance();
}

static SharedPreferences get getPref => _pref;
}

