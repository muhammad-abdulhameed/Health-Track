import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_track/core/widgets/app_icon.dart';

import '../../../../../core/constants/app_dimensions.dart';
import '../../../../../core/constants/app_icons.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/reusable_componants/shader.dart';

class SpecialtiesListWidget extends StatelessWidget {
  const SpecialtiesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.symmetric(horizontal: AppDimensions.padding32.w),
      child: Column(
        children: [
          Row(
            children: [
              CustomShader(
                child: Text(
                  AppStrings.specialties,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              const Spacer(),

              CustomShader(
                child: Text(
                  AppStrings.seeAll,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: AppDimensions.sizedBox12.h),
          SizedBox(height: 200.h,
            child: GridView.builder(shrinkWrap: false,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) =>
                  AppIconStyles.squareSpecialty(iconPath: AppIcons.cardiology, label: 'Cardiology'),
              itemCount: 6, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: AppDimensions.sizedBox6.w,mainAxisSpacing:AppDimensions.sizedBox12.h ),),
          ),
        ],
      ),
    );
  }
}
