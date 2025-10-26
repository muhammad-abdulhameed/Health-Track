import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';

class ScheduledDatesContainerWidget extends StatelessWidget {
  const ScheduledDatesContainerWidget({super.key, required this.date,  this.isToday=false});
final String date;
final bool isToday;
  @override
  Widget build(BuildContext context) {
    return Container(
constraints: BoxConstraints(
  maxWidth: 110.w,
  minHeight: 40.h,
  minWidth: 100.w,
  maxHeight: 40.h,
),
      alignment: Alignment.center,
      padding: REdgeInsets.symmetric(
        horizontal: AppDimensions.padding16.w,
        vertical: AppDimensions.padding8.h,
      ),
      decoration: BoxDecoration(
        gradient:isToday? LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: AppColors.mainGradient,
        ):null,
        color: isToday?null:AppColors.background,
        borderRadius: BorderRadius.circular(AppDimensions.radius50),
        border: Border.all(color: AppColors.primary, width: 1.w),
      ),
      child: FittedBox(child: Text(date ,style:Theme.of(context).textTheme.bodyMedium?.copyWith(color:isToday? AppColors.textSecondary:AppColors.textPrimary) ,)),
    );
  }
}
