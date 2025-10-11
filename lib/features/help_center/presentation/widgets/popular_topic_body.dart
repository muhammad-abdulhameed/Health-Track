import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_track/features/help_center/presentation/widgets/popular_topic_dropdown_widget.dart';

import '../../../../core/constants/app_dimensions.dart';
import '../../../favorites/presentation/widgets/dropdown_collapsed_widget.dart';

class PopularTopicBody extends StatelessWidget {
  const PopularTopicBody({super.key});

  @override
  Widget build(BuildContext context) {
     return ListView.separated(
      itemBuilder: (context, index) => PopularTopicTapDropDownWidget(index: index, title: '   Lorem ipsum dolor sit amet?',),
      scrollDirection: Axis.vertical,
      separatorBuilder: (_, _) =>
          SizedBox(height: AppDimensions.sizedBox12.h),
      itemCount: 4,
    );
  }
}
