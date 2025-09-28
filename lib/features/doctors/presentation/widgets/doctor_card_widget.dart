import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_track/features/doctors/presentation/widgets/doc_name_and_spcialization_widget.dart';



import '../../../../core/constants/app_dimensions.dart';

import 'doc_image_widget.dart';
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
        DocImageWidget(),
        Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DocNameAndSpcializationWidget(),
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
      ],
    );
  }
}
