import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:health_track/core/reusable_componants/semi_circural_container.dart';
import 'package:health_track/features/doctors/presentation/widgets/doc_image_widget.dart';
import 'package:health_track/features/doctors/presentation/widgets/doc_name_and_spcialization_widget.dart';
import 'package:health_track/features/doctors/presentation/widgets/doc_rate_widget.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';


class InfoDoctorCardWidget extends StatelessWidget {
  const InfoDoctorCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

DocImageWidget(),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DocNameAndSpcializationWidget(isInfo: true,),
              SizedBox(height: AppDimensions.sizedBox4.h,),
              SizedBox(
                height: AppDimensions.sizedBox32.h,
                width: AppDimensions.sizedBox180.w,
                child: Row(

                  children: [
                    DocRateWidget(),
                    SizedBox(width: AppDimensions.sizedBox6.h,),
                    SemiCircularContainer(child: Row(
                      children: [
                        Icon(Icons.comment_bank_rounded,color: AppColors.primary,size: 16.sp,),
                        SizedBox(width: AppDimensions.sizedBox4.w,),
                        Text("50",style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.textPrimary),)
                      ],
                    ))

                  ],
                ),
              )
            ],
          ),
        )
      ],

    );
  }
}
