import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_track/features/filter/domain/entity/filter_category_item_entity.dart';
import 'package:health_track/features/filter/presentation/manger/filter_cubit.dart';

import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/constants/app_icons.dart';
import '../../../../core/constants/app_strings.dart';
import '../manger/filter_state.dart';

class FilterCategoryWidget extends StatelessWidget {
  FilterCategoryWidget({super.key, required this.filterCategoryItemEntity, required this.categoryIndex,this.isExpand=false});
final int categoryIndex;
  final FilterCategoryItemEntity filterCategoryItemEntity;
  bool isExpand;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          trailing: IconButton(
            onPressed: () {

            },
            padding: EdgeInsets.zero,
            icon: SvgPicture.asset(
              AppIcons.arrowDown,
              height: 10.h,
              colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
            ),
          ),
          title: Text(filterCategoryItemEntity.name),
          onTap: () {

          FilterCubit.get(context).fetchFilters(index: categoryIndex);
          },
        ),
          BlocSelector<FilterCubit,FilterState,bool>(

            selector: (state) {
              if (state is FilterFetchSuccess&&state.index==categoryIndex) {
                return state.isExpand;
              }
              return false;
          },
            builder: (BuildContext context,  state) {
              if(state){
                return Column(
                  children: [
                    SizedBox(height: AppDimensions.sizedBox12.h),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => Center(
                        child: Text(
                          filterCategoryItemEntity.filtersOptions[index],
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                      separatorBuilder: (context, index) =>
                          SizedBox(height: AppDimensions.sizedBox12.h),
                      itemCount:
                      filterCategoryItemEntity.filtersOptions.length,
                    ),
                  ],
                ) ;
              }else{
                return SizedBox.shrink();
              }
            },

          ),
      ],
    );
  }
}
