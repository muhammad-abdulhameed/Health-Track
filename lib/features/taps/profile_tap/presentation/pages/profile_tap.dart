import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_track/core/constants/app_dimensions.dart';
import 'package:health_track/core/constants/app_icons.dart';
import 'package:health_track/core/constants/app_strings.dart';
import 'package:health_track/core/reusable_componants/custom_app_bar.dart';
import 'package:health_track/core/reusable_componants/gradient_container_widget.dart';
import 'package:health_track/core/routes/app_routes.dart';
import 'package:health_track/features/taps/profile_tap/domain/entity/profile_tap_enity.dart';
import '../../../../../core/reusable_componants/custom_service_btn_widget.dart';
import '../widgets/profile_info_card_widget.dart';


class ProfileTap extends StatelessWidget {
   ProfileTap({super.key});
final List<ProfileTapEntity> profileTapList = [
 ProfileTapEntity(title: AppStrings.profile, icon: AppIcons.profile,route: AppRoutes.editProfile),
  ProfileTapEntity(title: AppStrings.favorite, icon: AppIcons.favorites,route: AppRoutes.favorites),
  ProfileTapEntity(title: AppStrings.paymentMethod, icon: AppIcons.payment,route: AppRoutes.paymentMethod),
  ProfileTapEntity(title: AppStrings.privacyPolicy, icon: AppIcons.privacy,route: AppRoutes.privacyPolicy),
  ProfileTapEntity(title: AppStrings.settings, icon: AppIcons.settings,route: AppRoutes.settings),
  ProfileTapEntity(title: AppStrings.help, icon: AppIcons.help,route: AppRoutes.help),
  ProfileTapEntity(title: AppStrings.logout, icon: AppIcons.logOut ,route: ''),

];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.titleAppBar(AppStrings.myProfile,context),
      body: Column(
          children: [
       GradientContainerWidget(child: ProfileInfoCardWidget()),
         SizedBox(height: AppDimensions.sizedBox12.h,),
            Flexible(
              child: ListView.builder(
                  itemBuilder:(context, index) => CustomServiceBtn(title: profileTapList[index].title, icon: profileTapList[index].icon, route:profileTapList[index].route ,),
                  itemCount: profileTapList.length),
            ),


      ]

      ),
    );
  }
}
