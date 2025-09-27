import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_dimensions.dart';
import '../../../../../core/constants/app_icons.dart';
import '../../../../../core/widgets/app_icon.dart';

class SpecialtiesGrid extends StatelessWidget {
  const SpecialtiesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: REdgeInsets.symmetric(horizontal: AppDimensions.padding32.w),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
              (context, index) => AppIconStyles.squareSpecialty(
            iconPath: AppIcons.cardiology,
            label: 'Cardiology',
            iconHeight: AppDimensions.iconSize40,
            iconWidth: AppDimensions.iconSize40,
          ),
          childCount: 6,
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: AppDimensions.sizedBox6.w,
          mainAxisSpacing: AppDimensions.sizedBox12.h,
        ),
      ),
    );
  }
}