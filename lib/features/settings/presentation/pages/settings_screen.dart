import 'package:flutter/material.dart';
import 'package:health_track/core/reusable_componants/custom_app_bar.dart';
import 'package:health_track/features/taps/profile_tap/presentation/widgets/profile_tap_widget.dart';

import '../../../../core/constants/app_icons.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/routes/app_routes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.titleAppBar(AppStrings.settings,context),
      body: Column(
        children: [
        ProfileTapWidget(title: AppStrings.notificationSettings, icon: AppIcons.notificationsSettings, route: AppRoutes.notificationsSettings),
        ProfileTapWidget(title: AppStrings.passwordManger, icon: AppIcons.passwordManger, route: AppRoutes.passwordManger),
        ProfileTapWidget(title: AppStrings.deleteAccount, icon: AppIcons.profile, route: "")
        ],
      )
    );
  }
}
