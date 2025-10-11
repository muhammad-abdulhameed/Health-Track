import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_track/core/constants/app_dimensions.dart';
import 'package:health_track/core/constants/app_strings.dart';
import 'package:health_track/core/reusable_componants/circle_container.dart';
import 'package:health_track/core/reusable_componants/semi_circural_container.dart';
import 'package:health_track/core/reusable_componants/shader.dart';

import '../constants/app_colors.dart';
import '../constants/app_icons.dart';

class CustomAppBar {
  CustomAppBar._();

  static PreferredSizeWidget titleAppBar(String title,BuildContext context) => AppBar(
    leading:  IconButton(onPressed: (){
      Navigator.pop(context);
    },icon:Icon(Icons.arrow_back_ios, size: AppDimensions.iconSize24.sp,)),
    toolbarHeight: 70.h,
    title: Text(title, style: TextStyle(fontWeight: FontWeight.w600)),
    flexibleSpace: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(

          colors: AppColors.mainGradient,
        ),
      ),
    ),
  );

  static SliverAppBar searchAppBar(String title,String searchTitle) => SliverAppBar(
    floating: true,
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(100.h),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          children: [
            Text(
              searchTitle,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: AppDimensions.sizedBox12.h),
            TextField(
              style: TextStyle(height: 1.h, fontSize: 24.sp),
              decoration: InputDecoration(
                constraints: BoxConstraints(maxHeight: 38.h, minHeight: 38.h),
                filled: true,
                fillColor: Colors.white,
                hintText: 'Search...',
                hintStyle: TextStyle(fontSize: 16.sp, color: AppColors.primary),
                prefixIcon: SvgPicture.asset(
                  AppIcons.searchIcon,
                  height: 8.h,
                  width: 4.w,
                  fit: BoxFit.none,
                ),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppDimensions.radius50.r),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppDimensions.radius50.r),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    title: Text(title),
    flexibleSpace: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: AppColors.mainGradient,
        ),
      ),
    ),
  );

  static PreferredSizeWidget doctorInfoAppBar(BuildContext context) => AppBar(
    leadingWidth: 20.w,
    toolbarHeight: 70.h,
    centerTitle: false,
    leading: IconButton(onPressed: (){
       Navigator.pop(context);
    },icon:Icon(Icons.arrow_back_ios, size: AppDimensions.iconSize24.sp,)),
    title: Row(
      children: [
        SemiCircularContainer(
          child: CustomShader(
            child: Row(
              children: [
                Icon(
                  Icons.calendar_month_rounded,
                  size: AppDimensions.iconSize16.sp,
                ),
                SizedBox(width: AppDimensions.sizedBox6),
                Text(AppStrings.schedule, style: TextStyle(fontSize: 16.sp)),
              ],
            ),
          ),
        ),

        CircleContainer(
          child: CustomShader(
            child: Icon(
              Icons.phone_in_talk_outlined,
              size: AppDimensions.iconSize16.sp,
            ),
          ),
        ),

        CircleContainer(
          child: CustomShader(
            child: Icon(Icons.videocam, size: AppDimensions.iconSize16.sp),
          ),
        ),

        CircleContainer(
          child: CustomShader(
            child: Icon(Icons.chat, size: AppDimensions.iconSize16.sp),
          ),
        ),
      ],
    ),
    actions: [
      CircleContainer(backgroundColor: Colors.transparent,child: Icon(Icons.question_mark_sharp, size: AppDimensions.iconSize14.sp,),),
      CircleContainer(backgroundColor:  Colors.transparent,child: Icon(Icons.favorite_border_outlined, size: AppDimensions.iconSize14.sp,),),
    ],
    flexibleSpace: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(

          colors: AppColors.mainGradient,
        ),
      ),
    ),
  );
}
