import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_dimensions.dart';

class SchedualDateWidget extends StatelessWidget {
  const SchedualDateWidget({
    super.key, 
    required this.test,
    this.isSelected = false,
  });
  
  final String test;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(horizontal: AppDimensions.sizedBox6,vertical: AppDimensions.sizedBox6.h),
      height: AppDimensions.calendarDayHeightSize.h,
      width:  AppDimensions.calendarDayWidthSize.w,

      decoration: BoxDecoration(
        color: isSelected ? AppColors.textSecondary : Colors.transparent,
        borderRadius: BorderRadius.circular(AppDimensions.calendarDayRadiusSize.r),
        border: Border.all(
          color: AppColors.textSecondary,
          width: 1,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            test,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
              color: isSelected ? AppColors.primary : AppColors.background,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            _getWeekdayAbbreviation(int.parse(test)),
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
              color: isSelected ? AppColors.primary : AppColors.background,
            ),
          ),
        ],
      ),
    );
  }
  
  String _getWeekdayAbbreviation(int day) {
    // Simple mapping for demo purposes
    // In a real app, you'd calculate the actual weekday based on the date
    final weekdays = ['MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN'];
    return weekdays[day % 7];
  }
}
