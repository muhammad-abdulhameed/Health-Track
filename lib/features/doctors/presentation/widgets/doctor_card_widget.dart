import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_track/features/doctors/presentation/widgets/doc_name_and_spcialization_widget.dart';



import '../../../../core/constants/app_dimensions.dart';

import '../../../../core/reusable_componants/profile_image_widget.dart';
import 'doctor_card_actions_widget.dart';
import 'doctor_info_btn_widget.dart';

class DoctorCardWidget extends StatelessWidget {
  const DoctorCardWidget({super.key, this.isInfo = false});
  final bool isInfo;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ProfileImageWidget(),
        Flexible(
          child: SizedBox(
            height: 100.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DocNameAndSpcializationWidget(isDocCard: true,),
                SizedBox(height: AppDimensions.sizedBox19.h),
                Row(
                  mainAxisSize: MainAxisSize.max,

                  children: [
                    DoctorInfoBtnWidget(),
                    Spacer(),
                    DoctorCardActionsWidget(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
