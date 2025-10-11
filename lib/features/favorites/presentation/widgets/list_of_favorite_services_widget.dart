import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_track/features/favorites/presentation/widgets/services_widget.dart';

import '../../../../core/constants/app_dimensions.dart';

class ListOfFavoriteServicesWidget extends StatelessWidget {
  const ListOfFavoriteServicesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => ServicesWidget(index: index,),
      scrollDirection: Axis.vertical,
      separatorBuilder: (_, _) =>
          SizedBox(height: AppDimensions.sizedBox12.h),
      itemCount: 4,
    );
  }
}
