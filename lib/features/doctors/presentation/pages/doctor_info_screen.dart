import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_track/core/constants/app_dimensions.dart';
import 'package:health_track/core/constants/app_strings.dart';
import 'package:health_track/core/reusable_componants/custom_app_bar.dart';
import 'package:health_track/core/reusable_componants/semi_circural_container.dart';
import 'package:health_track/core/styles/app_styles.dart';
import 'package:health_track/features/doctors/presentation/widgets/doctor_card_widget.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_icons.dart';
import '../widgets/doctor_info_container_widget.dart';
import '../widgets/info_doctor_card_widget.dart';

class DoctorInfoScreen extends StatelessWidget {
  const DoctorInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: CustomAppBar.doctorInfoAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DoctorInfoContainerWidget(),
            Padding(
              padding:  REdgeInsets.symmetric(horizontal: AppDimensions.padding60),
              child: Text.rich(TextSpan(children: [
                TextSpan(text: "Focus: ",style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontSize: AppDimensions.fontSize16.sp)),
                TextSpan(text: AppStrings.onBoardingDesc2,style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.textPrimary))
              ])),
            ),
            SizedBox(height: AppDimensions.sizedBox40.h,),
            Padding(
              padding:  REdgeInsets.symmetric(horizontal: AppDimensions.padding41),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppStrings.profile,style: Theme.of(context).textTheme.bodyLarge,),
                  Text( AppStrings.onBoardingDesc2,style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.textPrimary)),
                  SizedBox(height: AppDimensions.sizedBox12.h,),
                  Text(AppStrings.careerPath,style: Theme.of(context).textTheme.bodyLarge,),
                  Text( AppStrings.onBoardingDesc2,style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.textPrimary)),
                  SizedBox(height: AppDimensions.sizedBox12.h,),
                  Text(AppStrings.highlights,style: Theme.of(context).textTheme.bodyLarge,),
                  Text( AppStrings.onBoardingDesc2,style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.textPrimary)),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
