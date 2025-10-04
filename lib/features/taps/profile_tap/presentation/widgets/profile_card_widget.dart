import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_track/features/doctors/presentation/widgets/doc_name_and_spcialization_widget.dart';

import '../../../../../core/constants/app_dimensions.dart';
import '../../../../../core/constants/app_icons.dart';
import '../../../../../core/reusable_componants/profile_image_widget.dart';

class ProfileCardWidget extends StatelessWidget {
  const ProfileCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            ProfileImageWidget(),
            Positioned(
              top: 75.h,
              right: 12.w,
              child: SvgPicture.asset(
                AppIcons.editProfile,
                height: AppDimensions.iconSize30.h,
                width: AppDimensions.iconSize40.w,
              ),
            ),
          ],
        ),
        DocNameAndSpcializationWidget(phone: "0100255454",)
      ],
    );
  }
}
