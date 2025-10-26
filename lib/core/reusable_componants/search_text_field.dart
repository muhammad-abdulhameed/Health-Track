import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/app_colors.dart';
import '../constants/app_dimensions.dart';
import '../constants/app_icons.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextField(
      style: TextStyle(height: 1.h, fontSize: 24.sp),
      decoration: InputDecoration(
        prefixIconConstraints: BoxConstraints(
          minWidth: 60.w,
          minHeight: 30.h,
        ),
contentPadding: EdgeInsets.zero,
        constraints: BoxConstraints(maxHeight: 38.h, minHeight: 30.h),
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
          borderSide: BorderSide(color: AppColors.primary),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radius50.r),
          borderSide:BorderSide(color: AppColors.primary),
        ),
      ),
    );
  }
}
