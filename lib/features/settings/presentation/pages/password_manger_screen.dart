import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_track/core/constants/app_dimensions.dart';
import 'package:health_track/core/reusable_componants/custom_app_bar.dart';
import 'package:health_track/core/reusable_componants/custom_text_form_field.dart';

import '../../../../core/constants/app_strings.dart';

class PasswordMangerScreen extends StatelessWidget {
  const PasswordMangerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.titleAppBar(AppStrings.passwordManger, context),
      body: Padding(
        padding:  REdgeInsets.symmetric(horizontal: AppDimensions.padding24.w, vertical: AppDimensions.padding24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              AppStrings.currentPassword,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w500),
            ),
            CustomTextFormField(
              hintText: AppStrings.passwordObs,
              obscureText: true,
            ),
            SizedBox(height: AppDimensions.sizedBox10.h,),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text(AppStrings.forgetPassword),
              ),
            ),
            SizedBox(height: AppDimensions.sizedBox27.h,),
            Text(
              AppStrings.newPassword,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w500),
            ),
            CustomTextFormField(
              hintText: AppStrings.passwordObs,
              obscureText: true,
            ),
            SizedBox(height: AppDimensions.sizedBox27.h,),
            Text(
              AppStrings.confirmNewPassword,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w500),
            ),
            CustomTextFormField(
              hintText: AppStrings.passwordObs,
              obscureText: true,
            ),
          ],
        ),
      ),
    );
  }
}
