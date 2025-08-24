import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_colors.dart';

class CustomAppBar  {
 static PreferredSizeWidget appBar(String title)=>AppBar(
   toolbarHeight: 70.h,
     title: Text(title),flexibleSpace:Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: AppColors.mainGradient,
      ),
    ),
  )) ;


}
