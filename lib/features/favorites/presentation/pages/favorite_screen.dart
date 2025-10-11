import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_track/core/constants/app_dimensions.dart';
import 'package:health_track/core/di/get_it.dart';
import 'package:health_track/core/reusable_componants/custom_app_bar.dart';
import 'package:health_track/features/favorites/presentation/manager/favorite_cubit.dart';
import 'package:health_track/features/favorites/presentation/widgets/custom_tap_widget.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/reusable_componants/custom_tap_bar_widget.dart';
import '../../../filter/presentation/pages/filter_and_doctors_row_widget.dart';
import '../widgets/list_of_favorite_doctors_widget.dart';
import '../widgets/list_of_favorite_services_widget.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar.titleAppBar(AppStrings.favorite,context),
        body: BlocProvider<FavoriteCubit>(
          create: (BuildContext context) =>getIt.get<FavoriteCubit>(),
          child: DefaultTabController(
            length: 2,
            child: Padding(
              padding: REdgeInsets.symmetric(
                horizontal: AppDimensions.padding24.w,
                vertical: AppDimensions.padding16.h,
              ),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(child: FilterAndDoctorsRowWidget()),
                  SliverToBoxAdapter(
                    child: SizedBox(height: AppDimensions.sizedBox16.h),
                  ),
                  SliverToBoxAdapter(
                    child: CustomTapBarWidget(tapsTitle: [AppStrings.doctors, AppStrings.services], tapsContent: [ListOfFavoriteDoctorsWidget(),ListOfFavoriteServicesWidget()],size: CustomTapSize.medium,),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
