import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:health_track/core/routes/app_routes.dart';
import 'package:health_track/features/doctors/presentation/widgets/specialties_list_view_widget.dart';

import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/reusable_componants/custom_app_bar.dart';
import '../../../filter/presentation/pages/filter_and_doctors_row_widget.dart';
import 'doctor_card_widget.dart';

class AllDoctorsBodyWidget extends StatelessWidget {
  const AllDoctorsBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomAppBar.searchAppBar(AppStrings.doctors,AppStrings.findYourDoctor),

        SliverPadding(padding: REdgeInsets.only(right:AppDimensions.padding44.w,top: AppDimensions.padding24 ),
          sliver: SliverToBoxAdapter(
            child: Align(alignment: Alignment.topRight,
                child: TextButton(onPressed: (){}, child: Text(AppStrings.seeAll))),
          ),
        ),
        SpecialtiesListViewWidget(),
        SliverPadding(
          padding: REdgeInsets.symmetric(
            vertical: AppDimensions.padding16,
            horizontal: AppDimensions.padding16,
          ),
          sliver: SliverToBoxAdapter(
            child: FilterAndDoctorsRowWidget(
              textBtnTitle: AppStrings.topRating,
              onTapTextBtn: () {
              GoRouter.of(context).pushNamed(AppRoutes.topRating);
              },
            ),
          ),
        ),
        SliverPadding(
            padding: REdgeInsets.symmetric(
              vertical: AppDimensions.padding16,
              horizontal: AppDimensions.padding16,
            ),
            sliver: SliverList.separated(itemBuilder: (context, index) =>DoctorCardWidget() , separatorBuilder:(context, index) =>  SizedBox(height: AppDimensions.sizedBox32.h,), itemCount: 10))

      ],
    );
  }
}
