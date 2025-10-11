import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_track/features/favorites/presentation/widgets/dropdown_collapsed_widget.dart';

import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../favorites/presentation/widgets/dropdown_expanded_widget.dart';
import '../blocs/help_center_cubit.dart';
import '../blocs/help_center_state.dart';

class PopularTopicTapDropDownWidget extends StatelessWidget {
  const PopularTopicTapDropDownWidget({
    super.key,
    required this.index,
    required this.title,
  });

  final int index;
  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HelpCenterCubit, HelpCenterState>(
      buildWhen: (previous, current) {
        if (current is HelpCenterServiceExpand) {
          return true;
        }
        return false;
      },
      builder: (context, state) {
        if (state is HelpCenterServiceExpand &&
            state.isExpand &&
            state.index == index) {
          return DropdownExpandedWidget(
            index: index,

            onPressed: () {
              HelpCenterCubit.get(context).showHelpCenterService(index);
            },
            title: title,
          );
        } else {
          return DropdownCollapsedWidget(
            index: index,
            title: title,
            onPressed: () {
              HelpCenterCubit.get(context).showHelpCenterService(index);
            },
          );
        }
      },
    );
  }
}
