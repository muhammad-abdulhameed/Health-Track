import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_colors.dart';
import '../constants/app_dimensions.dart';

class SemiCircularContainer extends StatelessWidget {
  const SemiCircularContainer({super.key, required this.child, this.isColoredBorder=false});
  final Widget child;
  final bool isColoredBorder;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(
        horizontal: AppDimensions.padding12.w,
        vertical: AppDimensions.padding4.h,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppDimensions.radius16.r),
        border: Border.all(color: isColoredBorder?AppColors.primary:AppColors.background,width: 1.w),
      ),
      child: child,

    );
  }
}
