import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/constants/app_icons.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_strings.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.symmetric(horizontal: 30.0.r, vertical: 10.r),
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child: SvgPicture.asset(
              AppIcons.notifications,
              height: AppDimensions.iconSize30.h,
              width: AppDimensions.iconSize30.w,
            ),
          ),
          SizedBox(width: AppDimensions.sizedBox4.w),
          InkWell(
            onTap: () {},
            child: SvgPicture.asset(
              AppIcons.settings,
              height: AppDimensions.iconSize30.h,
              width: AppDimensions.iconSize30.w,
            ),
          ),
          SizedBox(width: AppDimensions.sizedBox4.w),
          InkWell(
            onTap: () {},
            child: SvgPicture.asset(
              AppIcons.search,
              height: AppDimensions.iconSize30.h,
              width: AppDimensions.iconSize30.w,
            ),
          ),
          Spacer(),

          Column(
            children: [
              Text(
                AppStrings.welcomeBack,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w100,
                ),
              ),
              Text(
                AppStrings.userName,
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(color: AppColors.textPrimary),
              ),
            ],
          ),

          Stack(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppDimensions.padding8.w),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                ),
                child: Image.asset(
                  AppImages.profilePlaceholder,
                  height: AppDimensions.imageHeight40.h,
                  width: AppDimensions.imageWidth40.w,
                ),
              ),
              Positioned(
                top: 15.h,
                right: 0.w,
                child: SvgPicture.asset(
                  AppIcons.editProfile,
                  height: AppDimensions.iconSize16.h,
                  width: AppDimensions.iconSize16.w,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
