import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_dimensions.dart';
import '../../../../../core/constants/app_icons.dart';
import '../../../../../core/constants/app_strings.dart';

class ProfileTapWidget extends StatelessWidget {
  const ProfileTapWidget({super.key, required this.title, required this.icon,});
final String title;
final String icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
     /* onTap: (){
        GoRouter.of(context).pushNamed(title);
      },*/
      leading: SvgPicture.asset(icon,height: AppDimensions.iconSize40.h,),
      title: Text(title,style: Theme.of(context).textTheme.displayMedium,),
      trailing:  title!=AppStrings.logout? Icon(Icons.arrow_forward_ios_rounded,size: 16,color: AppColors.primary,):null,
    ) ;
  }
}
