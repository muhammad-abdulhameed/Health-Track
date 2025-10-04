import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_track/core/reusable_componants/gradient_container_widget.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/constants/app_icons.dart';
import '../../../../core/reusable_componants/semi_circural_container.dart';
import 'info_doctor_card_widget.dart';

class DoctorInfoStackWidget extends StatelessWidget {
  const DoctorInfoStackWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            GradientContainerWidget(child: InfoDoctorCardWidget()),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.transparent),
            ),
          ],
        ),

        Positioned(
          bottom: AppDimensions.sizedBox6.h,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppDimensions.padding32.w,
              vertical: AppDimensions.padding32.h,
            ),
            child: Row(
              children: [
                SemiCircularContainer(
                  isColoredBorder: true,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(AppIcons.achievement),
                      SizedBox(width: AppDimensions.sizedBox4.w),
                      Text(
                        "5 Years\nexperience",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: AppDimensions.sizedBox6.w),
                SemiCircularContainer(
                  isColoredBorder: true,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(AppIcons.alarm),
                      SizedBox(width: AppDimensions.sizedBox4.w),
                      Padding(
                        padding: REdgeInsets.symmetric(
                          horizontal: 2.w,
                          vertical: 10.h,
                        ),
                        child: Text(
                          "Mon-Sat / 9:00AM - 5:00PM",
                          style: Theme.of(context).textTheme.bodySmall
                              ?.copyWith(color: AppColors.textPrimary),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
