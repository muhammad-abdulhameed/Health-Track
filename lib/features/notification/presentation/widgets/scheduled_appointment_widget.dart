import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/constants/app_icons.dart';
import '../../../../core/constants/app_strings.dart';

class ScheduledAppointmentWidget extends StatelessWidget {
  const ScheduledAppointmentWidget({super.key,  this.itemCount=3});
final int itemCount;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(separatorBuilder: (context, index) => SizedBox(height: AppDimensions.sizedBox16.h,),
      itemCount: itemCount,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) =>ListTile(leading: SvgPicture.asset(AppIcons.schedule),
        contentPadding: EdgeInsets.zero,
        title: Text(AppStrings.scheduleAppointment ,style: Theme.of(context).textTheme.labelLarge),
        subtitle:Text(AppStrings.loremIpsumShort ,style: Theme.of(context).textTheme.headlineSmall),
        trailing: Text("2 M",style: Theme.of(context).textTheme.labelSmall),
      ) ,);
  }
}
