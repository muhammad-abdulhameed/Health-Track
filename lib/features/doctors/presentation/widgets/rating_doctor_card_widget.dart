import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_track/features/doctors/presentation/widgets/doc_rate_widget.dart';
import 'package:health_track/features/doctors/presentation/widgets/professional_doc_widget.dart';


import '../../../../core/reusable_componants/profile_image_widget.dart';
import 'doc_name_and_spcialization_widget.dart';
import 'doctor_card_actions_widget.dart';
import 'doctor_info_btn_widget.dart';

class RatingDoctorCardWidget extends StatelessWidget {
  const RatingDoctorCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ProfileImageWidget(isRating: true,),
        Flexible(
          child: SizedBox(
            height: 100.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProfessionalDocWidget(),

                DocNameAndSpcializationWidget(isDocCard: true,),

                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    DoctorInfoBtnWidget(),
                    SizedBox(width: 5.w,),
                    DocRateWidget(),
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
