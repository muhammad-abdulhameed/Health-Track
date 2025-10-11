import 'package:flutter/material.dart';
import 'package:health_track/core/reusable_componants/custom_app_bar.dart';

import '../../../../core/constants/app_icons.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/reusable_componants/custom_service_btn_widget.dart';
import '../../../../core/routes/app_routes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.titleAppBar(AppStrings.settings,context),
      body: Column(
        children: [
        CustomServiceBtn(title: AppStrings.notificationSettings, icon: AppIcons.notificationsSettings, route: AppRoutes.notificationsSettings),
        CustomServiceBtn(title: AppStrings.passwordManger, icon: AppIcons.passwordManger, route: AppRoutes.passwordManger),
        CustomServiceBtn(title: AppStrings.deleteAccount, icon: AppIcons.profile, route: "")
        ],
      )
    );
  }
}
