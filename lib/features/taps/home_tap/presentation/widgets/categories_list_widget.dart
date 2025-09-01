import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_dimensions.dart';
import '../../../../../core/constants/app_icons.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/reusable_componants/shader.dart';

class CategoriesListWidget extends StatelessWidget {
  const CategoriesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: REdgeInsets.symmetric(horizontal: AppDimensions.padding32),
          child: Row(
            children: [
              CustomShader(child: Text(AppStrings.categories,style: Theme.of(context).textTheme.titleMedium,)),
              const Spacer(),

              CustomShader(child: Text(AppStrings.seeAll,style: Theme.of(context).textTheme.titleSmall?.copyWith(decoration: TextDecoration.underline),)),


            ],
          ),
        ),
        SizedBox(height: AppDimensions.sizedBox4.h,),
        Divider(color: AppColors.surface,height:AppDimensions.dividerThickness.h,indent: 5,),
        SizedBox(height: AppDimensions.sizedBox4.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                SizedBox(height: AppDimensions.sizedBox22.h,
                    child: SvgPicture.asset(AppIcons.favoriteCategoriesIcon)),
                CustomShader(child: Text(AppStrings.favorite,style: Theme.of(context).textTheme.titleSmall,)),
              ],
            ),
            Column(
              children: [
                SizedBox(height: AppDimensions.sizedBox22.h,child: SvgPicture.asset(AppIcons.doctorCategoriesIcon)),
                CustomShader(child: Text(AppStrings.doctor,style: Theme.of(context).textTheme.titleSmall,)),
              ],
            ),
            Column(
              children: [
                SizedBox(height: AppDimensions.sizedBox22.h,child: SvgPicture.asset(AppIcons.pharmacyCategoriesIcon)),
                CustomShader(child: Text(AppStrings.pharmacy,style: Theme.of(context).textTheme.titleSmall,)),
              ],
            ),
            Column(
              children: [
                SizedBox(height: AppDimensions.sizedBox22.h,child: SvgPicture.asset(AppIcons.specialtiesCategoriesIcon)),
                CustomShader(child: Text(AppStrings.specialties,style: Theme.of(context).textTheme.titleSmall,)),
              ],
            ),
            Column(
              children: [
                SizedBox(height: AppDimensions.sizedBox22.h,child: SvgPicture.asset(AppIcons.recordCategoriesIcon)),
                CustomShader(child: Text(AppStrings.record,style: Theme.of(context).textTheme.titleSmall,)),
              ],
            ),
          ],
        )
      ],
    );
  }
}
