import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';


import '../constants/app_colors.dart';
import '../constants/app_dimensions.dart';
import '../constants/app_strings.dart';
import '../utils.dart';

class CustomServiceBtn extends StatelessWidget {
  const CustomServiceBtn({super.key, required this.title, required this.icon,required this.route});
final String title;
final String icon;
final String route;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        if(title==AppStrings.logout){
          AppUtils.logoutBottomSheet(context);
        }else{
          GoRouter.of(context).pushNamed(route);
        }
        },
      leading: SvgPicture.asset(icon,height: AppDimensions.iconSize40.h,),
      title: Text(title,style: Theme.of(context).textTheme.displayMedium,),
      trailing:  title!=AppStrings.logout? Icon(Icons.arrow_forward_ios_rounded,size: 16,color: AppColors.primary,):null,
    ) ;
  }
}
