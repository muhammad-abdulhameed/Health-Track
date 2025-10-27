import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_dimensions.dart';
import '../../../../../core/reusable_componants/circle_container.dart';
import 'chat_text_field_widget.dart';

class ChatMethodsContainerWidget extends StatelessWidget {
  const ChatMethodsContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(
        horizontal: AppDimensions.padding16.w,
        vertical: AppDimensions.padding12.h,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: AppColors.mainGradient),
        color: AppColors.surface,
      ),
      child: Row(
        children: [
          CircleContainer(
            child: Icon(
              Icons.attach_file,
              color: AppColors.primary,
              size: 27.sp,
            ),
          ),
          SizedBox(width: AppDimensions.sizedBox6.w),

          Expanded(
            child: ChatTextFieldWidget(),
          ),
          SizedBox(width: AppDimensions.sizedBox6.w),
          CircleContainer(
            child: Icon(
              Icons.send_rounded,
              color: AppColors.primary,
              size: 27.sp,
            ),
          ),
        ],
      ),
    );
  }
}
