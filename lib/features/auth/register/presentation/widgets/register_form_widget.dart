import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_dimensions.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/reusable_componants/custom_text_form_field.dart';

class RegisterFormWidget extends StatelessWidget {
  const RegisterFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: AppDimensions.sizedBox10.h),
        Text(
          AppStrings.fullName,
          style: Theme.of(context).textTheme.labelLarge,
        ),
        CustomTextFormField(
          hintText: AppStrings.fullName,
          textInputType: TextInputType.text,
        ),
        SizedBox(height: AppDimensions.sizedBox10.h),
        Text(
          AppStrings.password,
          style: Theme.of(context).textTheme.labelLarge,
        ),
        CustomTextFormField(
          hintText: AppStrings.passwordObs,
          obscureText: true,
          textInputType: TextInputType.visiblePassword,
        ),
        SizedBox(height: AppDimensions.sizedBox10.h),
        Text(
          AppStrings.email,
          style: Theme.of(context).textTheme.labelLarge,
        ),
        CustomTextFormField(
          hintText: AppStrings.emailHint,

          textInputType: TextInputType.emailAddress,
        ),
        SizedBox(height: AppDimensions.sizedBox10.h),
        Text(
          AppStrings.mobileNum,
          style: Theme.of(context).textTheme.labelLarge,
        ),
        CustomTextFormField(
          hintText: AppStrings.mobileNumHint,

          textInputType: TextInputType.phone,
        ),
        SizedBox(height: AppDimensions.sizedBox10.h),
        Text(
          AppStrings.dataOfBirth,
          style: Theme.of(context).textTheme.labelLarge,
        ),
        CustomTextFormField(
          hintText: AppStrings.dataOfBirth,
          textInputType: TextInputType.datetime,
        ),
      ],
    );
  }
}
