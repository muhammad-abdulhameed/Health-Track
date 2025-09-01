import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_dimensions.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/reusable_componants/customElevatedBtn.dart';
import '../../../../../core/reusable_componants/custom_app_bar.dart';
import '../../../../../core/reusable_componants/custom_text_form_field.dart';
import '../../../login/presentation/widgets/auth_methods_widget.dart';
import '../../../login/presentation/widgets/choose_login_or_sign_up_widget.dart';

class SetPasswordScreen extends StatelessWidget {
  const SetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar.appBar(AppStrings.setPassword),
        body: Padding(
          padding: REdgeInsets.symmetric(horizontal: AppDimensions.padding32),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: AppDimensions.sizedBox22.h),
                Text(
                  AppStrings.onBoardingDesc1,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                SizedBox(height: AppDimensions.sizedBox40.h),
                Text(
                  AppStrings.password,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                CustomTextFormField(
                  hintText: AppStrings.passwordObs,
                  obscureText: true,
                  textInputType: TextInputType.visiblePassword,
                ),
                SizedBox(height: AppDimensions.sizedBox51.h),
                Text(
                  AppStrings.confirmPassword,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                CustomTextFormField(
                  hintText: AppStrings.passwordObs,
                  obscureText: true,
                  textInputType: TextInputType.visiblePassword,
                ),
                SizedBox(height: AppDimensions.sizedBox71.h),
                Center(
                  child: CustomElevatedBtn(
                    text: AppStrings.createNewPassword,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
