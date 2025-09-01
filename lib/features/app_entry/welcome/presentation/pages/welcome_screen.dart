import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:health_track/core/constants/app_dimensions.dart';
import 'package:health_track/core/constants/app_images.dart';
import 'package:health_track/core/constants/app_strings.dart';
import 'package:health_track/core/reusable_componants/customElevatedBtn.dart';
import 'package:health_track/core/reusable_componants/customFilledBtn.dart';
import 'package:health_track/core/reusable_componants/shader.dart';

import '../../../../../core/routes/app_routes.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(AppImages.logo,height: AppDimensions.imageHeightLarge,width: AppDimensions.imageWidthLarge, ),
          SizedBox(height: AppDimensions.sizedBox27,),
          CustomShader(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(AppStrings.appNameHealth,style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.w900)),
                Text(AppStrings.appNameTrack,style: Theme.of(context).textTheme.headlineLarge,),
              ],
            ),
          ),
          SizedBox(height: AppDimensions.sizedBox80,),
          Text(AppStrings.onBoardingDesc1,style: Theme.of(context).textTheme.headlineSmall,textAlign: TextAlign.center,),
          SizedBox(height: AppDimensions.sizedBox16,),
          CustomElevatedBtn(text: AppStrings.login, onPressed: (){
            GoRouter.of(context).pushNamed(AppRoutes.login);          }),
          SizedBox(height: AppDimensions.sizedBox12,),
          CustomFilledBtn(text: AppStrings.signUp,onPressed: (){
            GoRouter.of(context).pushNamed(AppRoutes.register);
          },)
        ],
      ),
    );
  }
}
