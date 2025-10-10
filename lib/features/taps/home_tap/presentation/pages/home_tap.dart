
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:health_track/core/core.dart';
import 'package:health_track/features/main_layout/presentation/widgets/home_app_bar_widget.dart';
import 'package:health_track/features/taps/home_tap/presentation/widgets/categories_list_widget.dart';
import 'package:health_track/features/taps/home_tap/presentation/widgets/section_header_widget.dart';

import '../../../../../core/routes/app_routes.dart';
import '../widgets/specialties_grid_widget.dart';
import '../widgets/upcoming_schedule_widget.dart';


class HomeTap extends StatelessWidget {
  const HomeTap({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: HomeAppBarWidget(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: AppDimensions.sizedBox19),
        ),
        SliverToBoxAdapter(
          child: CategoriesListWidget(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: AppDimensions.sizedBox6.h),
        ),
        SliverToBoxAdapter(
          child: UpcomingScheduleWidget(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: AppDimensions.sizedBox6.h),
        ),
        SliverToBoxAdapter(
          child: SectionHeaderWidget( title: AppStrings.specialties,onSeeAll: (){
            GoRouter.of(context).pushNamed(AppRoutes.specialties);
          },),
        ),
        const SpecialtiesGrid(),
      ],
    );
  }
}
