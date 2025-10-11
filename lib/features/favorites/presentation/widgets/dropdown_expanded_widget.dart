import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/constants/app_icons.dart';
import '../../../../core/constants/app_strings.dart';
import '../manager/favorite_cubit.dart';
typedef OnPressedCallback = void Function();
class DropdownExpandedWidget extends StatelessWidget {
  const DropdownExpandedWidget({super.key, required this.index, required this.onPressed,  this.showIcon=false, required this.title});
final int index ;
final bool showIcon;
final String title;
final OnPressedCallback onPressed;
  @override
  Widget build(BuildContext context) {
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
              if(showIcon)
              IconButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                icon: Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: AppDimensions.iconSize24.sp,
                ),
              ),
              Text(title),
              Spacer(),
              IconButton(
                onPressed:onPressed,
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
  }
}
