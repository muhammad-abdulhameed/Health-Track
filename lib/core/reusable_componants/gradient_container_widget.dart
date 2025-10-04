import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_colors.dart';
import '../constants/app_dimensions.dart';

class GradientContainerWidget extends StatelessWidget {
  const GradientContainerWidget({super.key,required this.child});
final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimensions.padding32.w,
        vertical: AppDimensions.padding32.h,
      ),
      height: AppDimensions.doctorInfoCardHeight.h,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: AppColors.mainGradient,
        ),
      ),
      child: child,
    );
  }
}
