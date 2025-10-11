import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_track/features/favorites/presentation/widgets/custom_tap_widget.dart';
import 'package:health_track/features/help_center/presentation/widgets/popular_topic_body.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/reusable_componants/custom_tap_bar_widget.dart';
import '../../../favorites/presentation/widgets/list_of_favorite_doctors_widget.dart';

class FaqBodyWidget extends StatelessWidget {
  const FaqBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTapBarWidget(tapsTitle: [AppStrings.popularTopic, AppStrings.general,AppStrings.services], tapsContent: [PopularTopicBody(),PopularTopicBody(),PopularTopicBody()],size: CustomTapSize.small,)
      ],
    );
  }
}
