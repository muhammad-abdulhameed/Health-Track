import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/app_dimensions.dart';
import '../../../../../core/constants/app_icons.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/reusable_componants/shader.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({super.key,required this.title,required this.icon, required this.navigation});
 final String icon;
 final String title;
 final String navigation;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).pushNamed(navigation);
      },
      child: Column(
        children: [
          SizedBox(height: AppDimensions.sizedBox22.h,
              child: SvgPicture.asset(icon)),
          CustomShader(child: Text(title,style: Theme.of(context).textTheme.titleSmall,)),
        ],
      ),
    );
  }
}
