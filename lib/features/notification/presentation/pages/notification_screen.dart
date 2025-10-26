import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_track/core/constants/app_strings.dart';
import 'package:health_track/core/reusable_componants/custom_app_bar.dart';
import 'package:health_track/core/reusable_componants/search_text_field.dart';

import '../../../../core/constants/app_dimensions.dart';
import '../widgets/scheduled_appointment_widget.dart';
import '../widgets/scheduled_dates_container_widget.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.titleAppBar(AppStrings.notifications, context),
      body: SingleChildScrollView(
        child: Padding(
          padding: REdgeInsets.symmetric(
            horizontal: AppDimensions.padding24.w,
            vertical: AppDimensions.padding16.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ScheduledDatesContainerWidget(
                    date: AppStrings.today,
                    isToday: true,
                  ),
                  SizedBox(width: AppDimensions.sizedBox10.w),
                  SizedBox(width: 150.w, child: SearchTextField()),
                  Spacer(),

                  FittedBox(child: TextButton(onPressed: () {}, child: Text(AppStrings.markAll))),
                ],
              ),
              SizedBox(height: AppDimensions.sizedBox27.h),
              ScheduledAppointmentWidget(),
              SizedBox(height: AppDimensions.sizedBox16.h),
              ScheduledDatesContainerWidget(date: AppStrings.yesterday),
              SizedBox(height: AppDimensions.sizedBox12.h),
              ScheduledAppointmentWidget(itemCount: 1),
              SizedBox(height: AppDimensions.sizedBox16.h),
              ScheduledDatesContainerWidget(date: "15 Aug"),
              SizedBox(height: AppDimensions.sizedBox12.h),
              ScheduledAppointmentWidget(itemCount: 1),
            ],
          ),
        ),
      ),
    );
  }
}
