
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';

class CustomTapWidget extends StatelessWidget {
   CustomTapWidget({super.key, required this.title,this.isSelected=false , this.onTap,});

final String title;
   bool isSelected;
void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:  onTap,
      child: Container(
        alignment: Alignment.center,
        width: 150.w,
        height: 40.h,
        decoration: BoxDecoration(
          gradient:  LinearGradient(colors: isSelected?AppColors.mainGradient:[Colors.transparent,Colors.transparent]),
          borderRadius: BorderRadius.circular(
            AppDimensions.radius50.r,
          ),
          border: Border.all(color: AppColors.primary),
        ),
        child: Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(color: isSelected?AppColors.background: Colors.black),
        ),
      ),
    );
  }
}



