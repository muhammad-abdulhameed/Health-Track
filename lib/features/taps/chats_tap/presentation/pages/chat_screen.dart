import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_track/core/constants/app_dimensions.dart';
import 'package:health_track/core/constants/app_strings.dart';
import 'package:health_track/core/reusable_componants/custom_app_bar.dart';
import 'package:health_track/features/taps/chats_tap/presentation/widgets/chat_methods_container_widget.dart';
import 'package:health_track/features/taps/chats_tap/presentation/widgets/chat_text_field_widget.dart';
import 'package:health_track/features/taps/chats_tap/presentation/widgets/chats_list_widget.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/reusable_componants/circle_container.dart';
import '../widgets/chat_massege_widget.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.chatAppBar(context),
      body: Padding(
        padding: REdgeInsets.symmetric(
          vertical: AppDimensions.padding16.h,
          horizontal: AppDimensions.padding24.w,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(child: ChatsListWidget()),
            SizedBox(height: AppDimensions.padding16.h),
            ChatMethodsContainerWidget()
          ],
        ),
      ),
    );
  }
}
