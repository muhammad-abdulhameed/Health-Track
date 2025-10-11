
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';
enum CustomTapSize { small, medium, large }
class CustomTapWidget extends StatelessWidget {
   CustomTapWidget({super.key, required this.title,this.isSelected=false , this.onTap,required this.size});

final String title;
   bool isSelected;
   CustomTapSize size;
void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    double width ;
    double height ;
    TextStyle? textTheme;
    switch (size) {
      case CustomTapSize.small:
        width = 100.w;
        height = 30.h;
        textTheme = Theme.of(context).textTheme.bodySmall?.copyWith(color: isSelected?AppColors.background: Colors.black);
        break;
      case CustomTapSize.medium:
        width = 150.w;
        height = 40.h;
        textTheme = Theme.of(context).textTheme.bodyMedium?.copyWith(color: isSelected?AppColors.background: Colors.black);
        break;
      case CustomTapSize.large:
        width = 200.w;
        height = 50.h;
        textTheme = Theme.of(context).textTheme.bodyLarge?.copyWith(color: isSelected?AppColors.background: Colors.black);
        break;
    }
    return GestureDetector(
      onTap:  onTap,
      child: Container(
        alignment: Alignment.center,
        width:width,
        height: height,
        decoration: BoxDecoration(
          gradient:  LinearGradient(colors: isSelected?AppColors.mainGradient:[Colors.transparent,Colors.transparent]),
          borderRadius: BorderRadius.circular(
            AppDimensions.radius50.r,
          ),
          border: Border.all(color: AppColors.primary),
        ),
        child: Text(
          title,
          style: textTheme
        ),
      ),
    );
  }
}



