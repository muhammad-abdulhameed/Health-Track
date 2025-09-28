import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/reusable_componants/semi_circural_container.dart';

class DocRateWidget extends StatelessWidget {
  const DocRateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SemiCircularContainer(isColoredBorder: true,child: Row(
      children: [
        Icon(Icons.star,color: AppColors.primary,size: 16.sp,),
        SizedBox(width: AppDimensions.sizedBox4.w,),
        Text("5",style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.textPrimary),)
      ],
    ));
  }
}
