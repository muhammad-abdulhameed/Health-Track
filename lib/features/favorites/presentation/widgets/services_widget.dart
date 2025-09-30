import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_track/core/constants/app_colors.dart';
import 'package:health_track/core/constants/app_strings.dart';
import 'package:health_track/features/favorites/presentation/manager/favorite_cubit.dart';
import 'package:health_track/features/favorites/presentation/manager/favorite_state.dart';

import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/constants/app_icons.dart';

class ServicesWidget extends StatelessWidget {
  ServicesWidget({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<FavoriteCubit,FavoriteState>(
      buildWhen: (previous, current) {
        if (current is FavoriteServiceExpand ) {
          return true;
        }
        return false;
      },
      builder: (context, state) {
        if (state is FavoriteServiceExpand && state.isExpand && state.index == index) {
          return Column(
            children: [
              Container(
                height: 40.h,
                padding: REdgeInsets.symmetric(horizontal: 0.w, vertical: 0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: AppColors.mainGradient),
                  borderRadius: BorderRadius.circular(AppDimensions.radius50.r),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: AppDimensions.iconSize24.sp,
                      ),
                    ),
                    Text(AppStrings.cardiology),
                    Spacer(),
                    IconButton(
                      onPressed: () {
                        FavoriteCubit.get(context).showFavoriteService(index);
                      },
                      padding: EdgeInsets.zero,
                      icon: SvgPicture.asset(AppIcons.arrowDown, height: 10.h),
                    ),
                  ],
                ),
              ),

              SizedBox(height: AppDimensions.sizedBox51.h),
              Text(
                AppStrings.onBoardingDesc2,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],

          );
        }else{

          return Column(
            children: [
              Container(
                height: 40.h,
                padding: REdgeInsets.symmetric(horizontal: 0.w, vertical: 0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: AppColors.mainGradient),
                  borderRadius: BorderRadius.circular(AppDimensions.radius50.r),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: AppDimensions.iconSize24.sp,
                      ),
                    ),
                    Text(AppStrings.cardiology),
                    Spacer(),
                    IconButton(
                      onPressed: () {
                        FavoriteCubit.get(context).showFavoriteService(index,);
                      },
                      padding: EdgeInsets.zero,
                      icon: SvgPicture.asset(AppIcons.arrowDown, height: 10.h),
                    ),
                  ],
                ),
              ),
              /*if (state is FavoriteServiceExpand&&state.isExpand&& state.index == index)...[
                SizedBox(height: AppDimensions.sizedBox51.h),
                Text(
                  AppStrings.onBoardingDesc2,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],*/
            ],
          );

        }
        }
      ,
    );
  }
}
