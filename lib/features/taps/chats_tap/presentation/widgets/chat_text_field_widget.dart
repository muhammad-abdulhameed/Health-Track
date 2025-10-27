import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_dimensions.dart';
import '../../../../../core/constants/app_strings.dart';

class ChatTextFieldWidget extends StatelessWidget {
  const ChatTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: Theme.of(context).textTheme.labelLarge,
      decoration: InputDecoration(
        hintStyle: Theme.of(context).textTheme.labelMedium
            ?.copyWith(fontWeight: FontWeight.w400),
        suffixIconConstraints: BoxConstraints(
          maxHeight: 40.h,
          maxWidth: 40.w,
        ),
        contentPadding: REdgeInsets.symmetric(
          horizontal: AppDimensions.padding16.w,
          vertical: AppDimensions.padding8.h,
        ),
        suffixIcon: Icon(
          Icons.mic_none_outlined,
          color: AppColors.primary,
        ),
        constraints: BoxConstraints(maxHeight: 40.h),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            AppDimensions.radius50.r,
          ),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            AppDimensions.radius50.r,
          ),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        hintText: AppStrings.writeHere,
        border: InputBorder.none,
      ),
    );
  }
}
