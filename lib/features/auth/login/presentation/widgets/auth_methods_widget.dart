import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_dimensions.dart';
import '../../../../../core/constants/app_icons.dart';
import '../../../../../core/widgets/app_icon.dart';

class AuthMethods extends StatelessWidget {
  const AuthMethods({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppIcon.circular(iconPath: AppIcons.google),
        SizedBox(width: AppDimensions.sizedBox6.w),
        AppIcon.circular(iconPath: AppIcons.facebook),
        SizedBox(width: AppDimensions.sizedBox6.w),
        AppIcon.circular(iconPath: AppIcons.biometric),
      ],
    );
  }
}
