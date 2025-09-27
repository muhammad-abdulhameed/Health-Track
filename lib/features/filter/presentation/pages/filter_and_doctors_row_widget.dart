import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_dimensions.dart';
import '../../../../../core/constants/app_icons.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../core/di/get_it.dart';
import '../manger/filter_cubit.dart';
import '../manger/filter_state.dart';
import '../widgets/filter_category_widget.dart';

typedef TextBtnCallback = void Function();

class FilterAndDoctorsRowWidget extends StatelessWidget {
  const FilterAndDoctorsRowWidget({
    super.key,
    this.onTapTextBtn,
    this.textBtnTitle = "",
  });

  final TextBtnCallback? onTapTextBtn;
  final String textBtnTitle;

  final bool isHasTextBtn = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: AppDimensions.padding16.w),
        Text(
          AppStrings.sortBy,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: AppDimensions.fontSize14.sp,
          ),
        ),
        Container(
          margin: REdgeInsets.only(left: AppDimensions.padding8.w),
          padding: REdgeInsets.symmetric(
            horizontal: AppDimensions.padding16.w,
            vertical: AppDimensions.padding4.h,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: AppColors.mainGradient,
            ),
            borderRadius: BorderRadius.circular(AppDimensions.radius50),
          ),
          child: Row(
            children: [
              Text("A", style: Theme.of(context).textTheme.titleMedium),
              Icon(
                Icons.arrow_right_alt_outlined,
                size: 20.r,
                color: AppColors.background,
              ),
              Text("Z", style: Theme.of(context).textTheme.titleMedium),
            ],
          ),
        ),
        BlocBuilder<FilterCubit, FilterState>(
          buildWhen: (previous, current) => current is FilterFetchSuccess,
          builder: (context, state) => GestureDetector(
            onTap: () {
              showBottomSheet(
                enableDrag: true,
                showDragHandle: true,
                context: context,
                builder: (_) {
                  state as FilterFetchSuccess;
                    return BlocProvider.value(
                      value: getIt.get<FilterCubit>(),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            AppStrings.filter,
                            style: Theme.of(context).textTheme.headlineMedium
                                ?.copyWith(fontWeight: FontWeight.w600),
                          ),
                          Expanded(
                            child: ListView.separated(
                              itemBuilder: (context, index) =>
                                  FilterCategoryWidget(
                                    filterCategoryItemEntity:
                                        state.filters[index],
                                    categoryIndex: index,
                                  ),
                              separatorBuilder: (context, index) => SizedBox(
                                height: AppDimensions.sizedBox12.h,
                              ),
                              itemCount: state.filters.length,
                            ),
                          ),
                        ],
                      ),
                    );

                },
              );
            },
            child: Container(
              margin: REdgeInsets.only(left: AppDimensions.padding8.w),
              padding: REdgeInsets.symmetric(
                horizontal: AppDimensions.padding16.w,
                vertical: 2.h,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppDimensions.radius50),
                border: Border.all(color: AppColors.primary),
              ),
              child: Text(
                AppStrings.filter,
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(color: AppColors.primary),
              ),
            ),
          ),
        ),
        Spacer(),
        if (isHasTextBtn)
          TextButton(
            onPressed: onTapTextBtn,
            child: Text(
              textBtnTitle,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(color: AppColors.primary),
            ),
          ),
      ],
    );
  }
}
