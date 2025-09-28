import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:health_track/core/widgets/app_icon.dart';
import 'package:health_track/features/taps/home_tap/presentation/widgets/specialties_grid_widget.dart';

import '../../../../../core/constants/app_dimensions.dart';
import '../../../../../core/constants/app_icons.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/reusable_componants/shader.dart';
import '../../../../../core/routes/app_routes.dart';

class SpecialtiesListWidget extends StatelessWidget {
  const SpecialtiesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: REdgeInsets.symmetric(horizontal: AppDimensions.padding32.w),
      sliver: SliverList(
        delegate: SliverChildListDelegate.fixed([
          /// Header row

          SizedBox(height: AppDimensions.sizedBox12.h),
        ]),
      ),
    );
  }
}

