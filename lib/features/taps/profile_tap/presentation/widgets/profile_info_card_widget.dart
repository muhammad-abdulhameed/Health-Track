import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_track/features/doctors/presentation/widgets/doc_name_and_spcialization_widget.dart';

import '../../../../../core/constants/app_dimensions.dart';
import '../../../../../core/constants/app_icons.dart';
import '../../../../../core/reusable_componants/profile_image_widget.dart';

class ProfileInfoCardWidget extends StatelessWidget {
  const ProfileInfoCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ProfileImageWidget(enableEdit: true,),
        SizedBox(width: AppDimensions.sizedBox12.w,),
        DocNameAndSpcializationWidget(phone: "0100255454",)
      ],
    );
  }
}
