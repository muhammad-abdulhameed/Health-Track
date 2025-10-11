import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:health_track/core/constants/app_dimensions.dart';
import 'package:health_track/core/constants/app_icons.dart';
import 'package:health_track/core/constants/app_strings.dart';
import 'package:health_track/core/reusable_componants/custom_app_bar.dart';

import '../../../../core/routes/app_routes.dart';
import '../../../../core/widgets/app_icon.dart';
import '../../../filter/presentation/pages/filter_and_doctors_row_widget.dart';

class SpecialtiesScreen extends StatelessWidget {
  const SpecialtiesScreen({super.key});
 static const List<String> specialties = [
    "Cardiology",
    "Dermatology",
    "Neurology",
    "Pediatrics",
    "Psychiatry",
    "Radiology",
    "Oncology",
    "Gynecology",
    "Urology",
    "Orthopedics"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            CustomAppBar.searchAppBar(AppStrings.specialties,AppStrings.findYourDoctor),
            SliverPadding(
              padding: REdgeInsets.symmetric(
                vertical: AppDimensions.padding16,
                horizontal: AppDimensions.padding16,
              ),
              sliver: SliverToBoxAdapter(
                child: FilterAndDoctorsRowWidget(textBtnTitle: AppStrings.doctors,onTapTextBtn: (){

                  GoRouter.of(context).pushNamed(AppRoutes.doctors,);
                },),
              ),
            ),
            SliverPadding(
              padding: REdgeInsets.symmetric(
                horizontal: AppDimensions.padding41,
              ),
              sliver: SliverGrid.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.5 / 0.5,
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      GoRouter.of(context).pushNamed(AppRoutes.doctors,extra:specialties[index] );
                    },
                    child: AppIconStyles.squareSpecialty(
                      iconPath: AppIcons.cardiology,
                      label: specialties[index],
                    ),
                  );
                },
                itemCount: specialties.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
