import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/routes/app_routes.dart';

class DoctorInfoBtnWidget extends StatelessWidget {
  const DoctorInfoBtnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).pushNamed(AppRoutes.doctorInfo);
      },
      child: Container(
       /* margin: REdgeInsets.only(left: AppDimensions.padding8.w),*/
        padding: REdgeInsets.symmetric(
          horizontal: AppDimensions.padding16.w,
          vertical: 2.h,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            AppDimensions.radius50,
          ),
          border: Border.all(color: AppColors.primary,width: 1.w),
        ),
        child: Text(
          AppStrings.info,
          style: Theme.of(context).textTheme.titleMedium
              ?.copyWith(color: AppColors.primary),
        ),
      ),
    );
  }
}
