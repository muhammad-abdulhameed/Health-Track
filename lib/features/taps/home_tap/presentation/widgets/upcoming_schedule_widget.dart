import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_track/core/constants/app_icons.dart';
import 'package:health_track/features/taps/home_tap/presentation/widgets/schedual_dates_list_view_widget.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_dimensions.dart';
import '../../../../../core/constants/app_strings.dart';

class UpcomingScheduleWidget extends StatefulWidget {
  const UpcomingScheduleWidget({super.key});

  @override
  State<UpcomingScheduleWidget> createState() => _UpcomingScheduleWidgetState();
}

class _UpcomingScheduleWidgetState extends State<UpcomingScheduleWidget> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(
        horizontal: AppDimensions.padding24,
        vertical: AppDimensions.padding8,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: AppColors.mainGradient),
      ),
      height: AppDimensions.appointmentBannerHeight.h,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                AppStrings.upcomingAppointment,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Spacer(),
              Text(
                AppStrings.months,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
          Divider(
            color: AppColors.surface,
            height: AppDimensions.dividerThickness.h,
          ),
          SizedBox(height: AppDimensions.sizedBox4.h),
          ScheduleDatesListViewWidget(),
          SizedBox(height: AppDimensions.sizedBox12.h),
          Container(
            width: double.infinity,
            height: AppDimensions.appointmentDetailsContainerHeight.h,
            padding: REdgeInsets.symmetric(horizontal: AppDimensions.padding16,vertical: AppDimensions.padding8.h),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(AppDimensions.radius16.r,),
              border: Border.all(color: AppColors.textSecondary,width: 1,),
            ),
            child: Column(
              children: [
                Align(alignment: Alignment.topRight, child: Text(AppStrings.seeAll,style: Theme.of(context).textTheme.titleSmall?.copyWith(decoration: TextDecoration.underline,))),
                SizedBox(height: AppDimensions.sizedBox4.h),
                Divider(
                  color: AppColors.surface,
                  height: AppDimensions.dividerThickness.h,
                ),
                SizedBox(height: AppDimensions.sizedBox6.h),
                ListTile(minTileHeight: 0,
                  minLeadingWidth: 0,
                horizontalTitleGap: 10.w,

                  titleAlignment: ListTileTitleAlignment.center,
                  minVerticalPadding: 2.h,
                  subtitle: Text("10:00 am     Dr. Doctor Name",style: Theme.of(context).textTheme.titleMedium,),
                  contentPadding: EdgeInsets.zero,
                  leading:SvgPicture.asset(AppIcons.dotIcon) ,
                  title: Text("11 Month - Wednesday - Today",style: Theme.of(context).textTheme.titleSmall,),
                ),
                Divider(
                  color: AppColors.surface,
                  height: AppDimensions.dividerThickness.h,
                ),
                ListTile(minTileHeight: 0,
                  minLeadingWidth: 0,
                  horizontalTitleGap: 10.w,

                  titleAlignment: ListTileTitleAlignment.center,
                  minVerticalPadding: 2.h,
                  subtitle: Text("10:00 am     Dr. Doctor Name",style: Theme.of(context).textTheme.titleMedium,),
                  contentPadding: EdgeInsets.zero,
                  leading:SvgPicture.asset(AppIcons.dotIcon) ,
                  title: Text("11 Month - Wednesday - Today",style: Theme.of(context).textTheme.titleSmall,),
                ),

              ],
            ),
          )

        ],
      ),
    );
  }
}
