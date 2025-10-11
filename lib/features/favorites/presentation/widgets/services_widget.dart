import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_track/core/constants/app_colors.dart';
import 'package:health_track/core/constants/app_strings.dart';
import 'package:health_track/features/favorites/presentation/manager/favorite_cubit.dart';
import 'package:health_track/features/favorites/presentation/manager/favorite_state.dart';
import 'package:health_track/features/favorites/presentation/widgets/dropdown_collapsed_widget.dart';
import 'package:health_track/features/favorites/presentation/widgets/dropdown_expanded_widget.dart';

import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/constants/app_icons.dart';

class ServicesWidget extends StatelessWidget {
  const ServicesWidget({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteCubit, FavoriteState>(
      buildWhen: (previous, current) {
        if (current is FavoriteServiceExpand) {
          return true;
        }
        return false;
      },
      builder: (context, state) {
        if (state is FavoriteServiceExpand &&
            state.isExpand &&
            state.index == index) {
          return DropdownExpandedWidget(index: index, onPressed: () {
            FavoriteCubit.get(context).showFavoriteService(index,);
          }, title: AppStrings.cardiology,);
        } else {
          return DropdownCollapsedWidget(
            onPressed: (){
              FavoriteCubit.get(context).showFavoriteService(index,);
            },
            index: index,
            title: AppStrings.cardiology,
            showIcon: true,
          );
        }
      },
    );
  }
}
