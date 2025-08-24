import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_track/core/constants/app_colors.dart';
import 'package:health_track/core/constants/app_dimensions.dart';
import 'package:health_track/core/constants/app_images.dart';
import 'package:health_track/core/core.dart';
import 'package:health_track/core/reusable_componants/shader.dart';

import '../../domain/entities/on_boarding_item.dart';

class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget({super.key, required this.onBoardingItem});

  final OnBoardingItem onBoardingItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          alignment: Alignment.center,
          height: AppDimensions.onboardingContainerHeight.h,
          width: AppDimensions.onboardingContainerWidth.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: AppColors.onBoardingContainerGradient,
            ),
          ),
          child: Image.asset(
            height: AppDimensions.onboardingImageHeight.h,
            width: AppDimensions.onboardingImageWidth.w,
            onBoardingItem.image,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(height: AppDimensions.sizedBox32.h),
        SizedBox(
          height: AppDimensions.sizedBox95.h,
          child: CustomShader(
            child: Text(
              onBoardingItem.title,
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontSize: AppDimensions.fontSize32.sp),
              textAlign: TextAlign.center,
            ),
          ),
        ),
/*
        SizedBox(height: AppDimensions.sizedBoxHeightXXXL.h),
*/
        Text(
          onBoardingItem.description,
          style: Theme.of(context).textTheme.headlineSmall,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
