import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_track/core/constants/constants.dart';
import 'package:health_track/core/reusable_componants/custom_app_bar.dart';

import '../widgets/settings_switch_widget.dart';

class NotificationSetting extends StatelessWidget {
  const NotificationSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.titleAppBar(
        AppStrings.notificationSettings,
        context,
      ),
      body: Padding(
        padding: REdgeInsets.symmetric(
          horizontal: AppDimensions.padding24.w,
          vertical: AppDimensions.padding16.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SettingsSwitchWidget(title: AppStrings.generalNotification),
            SizedBox(height: AppDimensions.sizedBox27.h),
            SettingsSwitchWidget(title: AppStrings.sound),
            SizedBox(height: AppDimensions.sizedBox27.h),

            SettingsSwitchWidget(title: AppStrings.soundCall),
            SizedBox(height: AppDimensions.sizedBox27.h),

            Text(
              AppStrings.vibration,
              style: Theme.of(context).textTheme.displayMedium,
            ),
            SizedBox(height: AppDimensions.sizedBox27.h),

            Text(
              AppStrings.specialOffers,
              style: Theme.of(context).textTheme.displayMedium,
            ),
            SizedBox(height: AppDimensions.sizedBox27.h),

            Text(
              AppStrings.payments,
              style: Theme.of(context).textTheme.displayMedium,
            ),
            SizedBox(height: AppDimensions.sizedBox27.h),

            Text(
              AppStrings.promoAndDiscounts,
              style: Theme.of(context).textTheme.displayMedium,
            ),
            SizedBox(height: AppDimensions.sizedBox27.h),
            Text(
              AppStrings.cashBack,
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ],
        ),
      ),
    );
  }
}
