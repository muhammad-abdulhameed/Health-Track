import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:health_track/core/constants/app_dimensions.dart';

import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/reusable_componants/shader.dart';
import '../../../../../core/routes/app_routes.dart';
typedef SeeAllCallback = void Function();
class SectionHeaderWidget extends StatelessWidget {
   const SectionHeaderWidget({super.key, required this.title , required this.onSeeAll});
  final String title;
  final SeeAllCallback onSeeAll;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  REdgeInsets.symmetric(horizontal: AppDimensions.padding32.w),
      child: Row(
        children: [
          CustomShader(
            child: Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const Spacer(),
          CustomShader(
            child: TextButton(
              onPressed: onSeeAll

              ,
              child: Text(
                AppStrings.seeAll,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
