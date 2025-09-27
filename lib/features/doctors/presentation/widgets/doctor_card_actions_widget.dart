import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';

class DoctorCardActionsWidget extends StatelessWidget {
  const DoctorCardActionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.calendar_month,color: AppColors.primary,size: 20.r,),
        SizedBox(width: AppDimensions.sizedBox6.w,),
        Icon(Icons.question_mark_sharp,color: AppColors.primary,size: 20.r,),
        SizedBox(width: AppDimensions.sizedBox6.w,),
        Icon(Icons.favorite,color: AppColors.primary,size: 20.r,),
      ],
    );
  }
}
