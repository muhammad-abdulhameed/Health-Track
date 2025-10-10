import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_track/core/routes/app_routes.dart';
import 'package:health_track/features/taps/home_tap/presentation/dummy_data/category_item_dummy_data.dart';
import 'package:health_track/features/taps/home_tap/presentation/widgets/category_item_widget.dart';
import 'package:health_track/features/taps/home_tap/presentation/widgets/section_header_widget.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_dimensions.dart';
import '../../../../../core/constants/app_icons.dart';
import '../../../../../core/constants/app_strings.dart';

class CategoriesListWidget extends StatelessWidget {
   CategoriesListWidget({super.key});
 final  List<CategoryItemDummy> _categoryItems=[
   CategoryItemDummy(icon: AppIcons.favoriteCategoriesIcon, title: AppStrings.favorite),
   CategoryItemDummy(icon: AppIcons.doctorCategoriesIcon, title: AppStrings.doctors),
   CategoryItemDummy(icon: AppIcons.pharmacyCategoriesIcon, title: AppStrings.pharmacy),
   CategoryItemDummy(icon: AppIcons.specialtiesCategoriesIcon, title: AppStrings.specialties),
   CategoryItemDummy(icon: AppIcons.recordCategoriesIcon, title: AppStrings.record),

 ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeaderWidget(title: AppStrings.categories, onSeeAll: () {}),
        SizedBox(height: AppDimensions.sizedBox4.h),
        Divider(
          color: AppColors.surface,
          height: AppDimensions.dividerThickness.h,
          indent: 5,
        ),
        Padding(
          padding: REdgeInsets.symmetric(horizontal: AppDimensions.padding24.w,vertical: AppDimensions.padding16.h),
          child: SizedBox(height: AppDimensions.sizedBox46.h,child:
          ListView.separated(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => CategoryItemWidget(title: _categoryItems[index].title,icon: _categoryItems[index].icon,navigation: AppRoutes.favorites,),
            separatorBuilder: (context, index) =>
                SizedBox(width: AppDimensions.sizedBox16.w),
            itemCount: _categoryItems.length,
          )),
        ),
        /* Row(
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
        )*/
      ],
    );
  }
}
