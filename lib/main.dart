import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_track/core/core.dart';
import 'package:health_track/core/local_storage/sharedPref.dart';
import 'package:health_track/features/filter/presentation/manger/filter_cubit.dart';

import 'core/di/get_it.dart';
import 'core/myBlocObserver.dart';
import 'core/routes/app_routes.dart';


void main() async{
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await ScreenUtil.ensureScreenSize();
  await SharedPref.init();
  runApp( ScreenUtilInit( designSize: Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      child:  BlocProvider(create:(context) =>  getIt.get<FilterCubit>()..fetchFilters(),
          child: HealthTrackApp())));
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
