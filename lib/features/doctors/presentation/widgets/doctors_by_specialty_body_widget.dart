import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/reusable_componants/custom_app_bar.dart';
import '../../../filter/presentation/pages/filter_and_doctors_row_widget.dart';
import 'doctor_card_widget.dart';

class DoctorsBySpecialtyBodyWidget extends StatelessWidget {
  const DoctorsBySpecialtyBodyWidget({super.key, required this.specialty});
final String? specialty;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomAppBar.searchAppBar(specialty??AppStrings.doctors,AppStrings.findYourDoctor),

        SliverPadding(
          padding: REdgeInsets.symmetric(
            vertical: AppDimensions.padding16,
            horizontal: AppDimensions.padding16,
          ),
          sliver: SliverToBoxAdapter(
            child: FilterAndDoctorsRowWidget(
              textBtnTitle: AppStrings.seeAll,
              onTapTextBtn: () {},
            ),
          ),
        ),
        SliverList.separated(itemBuilder: (context, index) =>DoctorCardWidget() , separatorBuilder:(context, index) =>  SizedBox(height: AppDimensions.sizedBox32.h,), itemCount: 10)

      ],
    );
  }
}
