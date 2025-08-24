import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:health_track/core/constants/app_strings.dart';
import 'package:health_track/core/core.dart';
import 'package:health_track/core/reusable_componants/customElevatedBtn.dart';
import 'package:health_track/core/reusable_componants/custom_app_bar.dart';
import 'package:health_track/core/reusable_componants/custom_text_form_field.dart';
import '../../../../../core/constants/app_dimensions.dart';
import '../../../../../core/routes/app_routes.dart';
import '../widgets/auth_methods_widget.dart';
import '../widgets/choose_login_or_sign_up_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar.appBar(AppStrings.login),
        body: Padding(
          padding: REdgeInsets.symmetric(horizontal: AppDimensions.paddingXL),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: AppDimensions.sizedBox22.h),
                Text(
                  AppStrings.welcome,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(height: AppDimensions.sizedBox6.h),
                Text(
                  AppStrings.onBoardingDesc1,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                SizedBox(height: AppDimensions.sizedBox40.h),
                Text(
                  AppStrings.emailOrMobilePhone,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                CustomTextFormField(
                  hintText: AppStrings.emailHint,
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(height: AppDimensions.sizedBox12.h),
                Text(
                  AppStrings.password,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                CustomTextFormField(
                  hintText: AppStrings.passwordObs,
                  obscureText: true,
                  textInputType: TextInputType.visiblePassword,
                ),
                SizedBox(height: AppDimensions.sizedBox12.h),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      GoRouter.of(context).pushNamed(AppRoutes.setPassword);
                    },
                    child: Text(AppStrings.forgetPassword),
                  ),
                ),
                SizedBox(height: AppDimensions.sizedBox22.h),
                Center(
                  child: CustomElevatedBtn(
                    text: AppStrings.login,
                    onPressed: () {},
                  ),
                ),
                SizedBox(height: AppDimensions.sizedBox32.h),
                Center(
                  child: Text(
                    AppStrings.orSignUpWith,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                SizedBox(height: AppDimensions.sizedBox12.h),
                AuthMethods(),
                SizedBox(height: AppDimensions.sizedBox12),
                ChooseLoginOrSignUpWidget(loginOrSignUp: AppStrings.signUp,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
