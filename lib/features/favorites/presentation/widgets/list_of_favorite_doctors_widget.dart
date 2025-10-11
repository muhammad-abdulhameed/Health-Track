import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_dimensions.dart';
import 'favorite_Doctor_card_widget.dart';

class ListOfFavoriteDoctorsWidget extends StatelessWidget {
  const ListOfFavoriteDoctorsWidget({super.key,});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => FavoriteDoctorCardWidget(),
      scrollDirection: Axis.vertical,
      separatorBuilder: (_, _) =>
          SizedBox(height: AppDimensions.sizedBox12.h),
      itemCount: 4,
    );
  }
}
