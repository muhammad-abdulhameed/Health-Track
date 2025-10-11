import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_track/core/di/get_it.dart';
import 'package:health_track/features/favorites/presentation/widgets/custom_tap_widget.dart';
import 'package:health_track/features/help_center/presentation/blocs/help_center_cubit.dart';
import 'package:health_track/features/help_center/presentation/widgets/contact_us_body_widget.dart';
import 'package:health_track/features/help_center/presentation/widgets/faq_body_widget.dart';

import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/reusable_componants/custom_app_bar.dart';
import '../../../../core/reusable_componants/custom_tap_bar_widget.dart';
import '../../../favorites/presentation/widgets/list_of_favorite_doctors_widget.dart';
import '../../../favorites/presentation/widgets/list_of_favorite_services_widget.dart';

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: BlocProvider(
       create: (context) => getIt.get<HelpCenterCubit>(),
       child: DefaultTabController(
         length: 2,
         child: CustomScrollView(
           slivers: [
             CustomAppBar.searchAppBar(AppStrings.helpCenter, AppStrings.howCanWeHelpYou),
             SliverPadding(
                padding: REdgeInsets.symmetric(
                  vertical: AppDimensions.padding16.h,
                  horizontal: AppDimensions.padding16.w,
                ),
               sliver: SliverToBoxAdapter(
                 child: CustomTapBarWidget(tapsTitle: [AppStrings.faq, AppStrings.contactUs], tapsContent: [FaqBodyWidget(),ContactUsBodyWidget()], size: CustomTapSize.medium,),
               ),
             ),

           ],
         ),
       ),
     ),
    );
  }
}
