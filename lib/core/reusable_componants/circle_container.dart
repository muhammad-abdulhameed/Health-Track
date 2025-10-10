import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_dimensions.dart';

class CircleContainer extends StatelessWidget {
  const CircleContainer({super.key, required this.child, this.backgroundColor=Colors.white});
final Widget child;
final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: REdgeInsets.all(AppDimensions.padding4.r),
      padding: REdgeInsets.symmetric(horizontal: AppDimensions.padding4.w,vertical: AppDimensions.padding8.h),
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle ,
        border: Border.all(color: Colors.white)
      ),

        child: child,

    );
  }
}
