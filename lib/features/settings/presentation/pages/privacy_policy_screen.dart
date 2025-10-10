import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_track/core/constants/app_dimensions.dart';
import 'package:health_track/core/constants/app_strings.dart';
import 'package:health_track/core/reusable_componants/custom_app_bar.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.titleAppBar(AppStrings.privacyPolicy, context),
      body: Padding(
        padding:  REdgeInsets.symmetric(horizontal: AppDimensions.padding24.w, vertical: AppDimensions.padding24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Last updated: January 1, 2024", style: Theme.of(context).textTheme.labelSmall,),
            SizedBox(height: AppDimensions.sizedBox16.h,),
            Text(AppStrings.onBoardingDesc2,style: Theme.of(context).textTheme.headlineSmall,),
            SizedBox(height: AppDimensions.sizedBox16.h,),
            Text(AppStrings.onBoardingDesc2,style: Theme.of(context).textTheme.headlineSmall,),
            SizedBox(height: AppDimensions.sizedBox22.h,),
            Text(AppStrings.termsAndConditions,style: Theme.of(context).textTheme.bodyLarge,),
            SizedBox(height: AppDimensions.sizedBox16.h,),

            Text(AppStrings.onBoardingDesc2,style: Theme.of(context).textTheme.headlineSmall,),

          ],
        ),
      ),
    );
  }
}
