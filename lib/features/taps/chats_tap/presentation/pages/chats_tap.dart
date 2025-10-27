import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_track/core/constants/app_dimensions.dart';
import 'package:health_track/core/constants/app_images.dart';
import 'package:health_track/core/constants/app_strings.dart';
import 'package:health_track/core/reusable_componants/custom_app_bar.dart';
import 'package:health_track/features/taps/chats_tap/presentation/widgets/chat_widget.dart';

import '../../../../../core/constants/app_icons.dart';

class ChatsTap extends StatelessWidget {
  const ChatsTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(

        slivers: [
          CustomAppBar.searchAppBar(
              AppStrings.chats, AppStrings.searchForChats),
          SliverPadding(padding: EdgeInsets.symmetric(
              horizontal: AppDimensions.padding24.w,
              vertical: AppDimensions.padding16.h),
            sliver:SliverList.builder(itemBuilder: (context, index) => ChatWidget(),itemCount: 1,)
            ,),

        ],
      ),
    );
  }
}
