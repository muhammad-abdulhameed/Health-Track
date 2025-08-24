import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_colors.dart';
typedef OnPressed = void Function();
class CustomFilledBtn extends StatelessWidget {
  const CustomFilledBtn({super.key,required this.text,required this.onPressed} );
final String text;
final OnPressed? onPressed;
  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        minimumSize: Size(204.w, 45.h),
        maximumSize: Size(269.w, 45.h),
        backgroundColor: AppColors.onContainer,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
        onPressed: onPressed, child: Text(text,style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.primary),));
  }
}
