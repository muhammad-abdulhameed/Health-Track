import '../../../../core/constants/app_strings.dart';
import '../../../../core/local_storage/sharedPref.dart';

class OnBoardingLocalDataSource {

 static Future<void> setOnBoardingSeen() async {

     await SharedPref.getPref.setBool(AppStrings.onBoardingCacheKey, true);

  }
 static bool getOnBoardingSeen() {
    return SharedPref.getPref.getBool(AppStrings.onBoardingCacheKey) ?? false;
  }
}