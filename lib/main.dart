import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_track/core/core.dart';
import 'package:health_track/core/local_storage/sharedPref.dart';

import 'core/routes/app_routes.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await SharedPref.init();
  runApp(const ScreenUtilInit( designSize: Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      child:  HealthTrackApp()));
}

class HealthTrackApp extends StatelessWidget {
  const HealthTrackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Health Track',
      theme: AppTheme.lightTheme,
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
    );
  }
}
