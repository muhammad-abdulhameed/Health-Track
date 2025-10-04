import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_track/core/constants/app_dimensions.dart';
import 'package:health_track/core/constants/app_icons.dart';
import 'package:health_track/core/constants/app_strings.dart';
import 'package:health_track/core/reusable_componants/custom_app_bar.dart';
import 'package:health_track/core/reusable_componants/gradient_container_widget.dart';
import 'package:health_track/features/taps/profile_tap/domain/entity/profile_tap_enity.dart';
import '../../../../../core/constants/app_colors.dart';
import '../widgets/profile_card_widget.dart';
import '../widgets/profile_tap_widget.dart';


class ProfileTap extends StatelessWidget {
   ProfileTap({super.key});
final List<ProfileTapEntity> profileTapList = [
 ProfileTapEntity(title: AppStrings.profile, icon: AppIcons.profile),
  ProfileTapEntity(title: AppStrings.favorite, icon: AppIcons.favorites),
  ProfileTapEntity(title: AppStrings.paymentMethod, icon: AppIcons.payment),
  ProfileTapEntity(title: AppStrings.privacyPolicy, icon: AppIcons.privacy),
  ProfileTapEntity(title: AppStrings.settings, icon: AppIcons.settings),
  ProfileTapEntity(title: AppStrings.help, icon: AppIcons.help),
  ProfileTapEntity(title: AppStrings.logout, icon: AppIcons.logOut),

];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.titleAppBar(AppStrings.myProfile,),
      body: Column(
          children: [
       GradientContainerWidget(child: ProfileCardWidget()),
         SizedBox(height: AppDimensions.sizedBox12.h,),
            Flexible(
              child: ListView.builder(
                  itemBuilder:(context, index) => ProfileTapWidget(title: profileTapList[index].title, icon: profileTapList[index].icon,),
                  itemCount: profileTapList.length),
            ),


      ]

      ),
    );
  }
}
