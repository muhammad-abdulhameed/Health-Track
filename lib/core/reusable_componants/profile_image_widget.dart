import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/app_dimensions.dart';
import '../constants/app_icons.dart';
import '../constants/app_images.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({
    super.key,
    this.isRating = false,
    this.enableEdit = false,
  });

  final bool isRating;
  final bool enableEdit;

  @override
  Widget build(BuildContext context) {
    if (enableEdit) {
      return Align(
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              child: Image.asset(
                AppImages.doctor1,
                height: isRating
                    ? AppDimensions.imageHeight70.h
                    : AppDimensions.imageHeight107.h,
                width: isRating
                    ? AppDimensions.imageHeight70.h
                    : AppDimensions.imageHeight107.h,

              ),
            ),
            Positioned(
              top: 75.h,
             right: 0,
              child: SvgPicture.asset(
                AppIcons.editProfile,
                height: AppDimensions.iconSize30.h,
                width: AppDimensions.iconSize40.w,
              ),
            ),
          ],
        ),
      );
    } else {
      return Row(
        children: [
          ClipRRect(
            child: Image.asset(
              AppImages.doctor1,
              height: isRating
                  ? AppDimensions.imageHeight70.h
                  : AppDimensions.imageHeight107.h,
              width: isRating
                  ? AppDimensions.imageHeight70.h
                  : AppDimensions.imageHeight107.h,

            ),
          ),
          SizedBox(width: AppDimensions.sizedBox10.w),
        ],
      );
    }
  }
}
