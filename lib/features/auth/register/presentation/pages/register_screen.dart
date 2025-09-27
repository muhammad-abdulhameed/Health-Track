
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_track/features/auth/register/presentation/widgets/terms_and_policy_widget.dart';
import '../../../../../core/constants/app_dimensions.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/reusable_componants/customElevatedBtn.dart';
import '../../../../../core/reusable_componants/custom_app_bar.dart';
import '../../../login/presentation/widgets/auth_methods_widget.dart';
import '../../../login/presentation/widgets/choose_login_or_sign_up_widget.dart';
import '../widgets/register_form_widget.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: CustomAppBar.titleAppBar(AppStrings.newAccount),
        body: Padding(
          padding: REdgeInsets.symmetric(
            horizontal: AppDimensions.padding24,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                RegisterFormWidget(),
                //that's to solve problem lose keyboard when click or scrolling on textfield dismiss keyboard when click outside textfield
                InkWell(
                  overlayColor: WidgetStateProperty.all(Colors.transparent),
                  onTap: () {
                    if (FocusScope.of(context).hasFocus) {
                      FocusScope.of(context).unfocus();
                    }
                  },
                  child: Column(
                    children: [
                      SizedBox(height: AppDimensions.sizedBox22.h),
                      Center(
                        child: CustomElevatedBtn(
                          text: AppStrings.signUp,
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(height: AppDimensions.sizedBox10.h),

                      TermsAndPolicyWidget(),
                      SizedBox(height: AppDimensions.sizedBox10.h),

                      Center(
                        child: Text(
                          AppStrings.orSignUpWith,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                      SizedBox(height: AppDimensions.sizedBox12.h),
                      AuthMethods(),
                      SizedBox(height: AppDimensions.sizedBox12.h),
                      ChooseLoginOrSignUpWidget(loginOrSignUp: AppStrings.login,),
                    ],
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
