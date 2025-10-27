import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_dimensions.dart';
import '../../../../../core/constants/app_icons.dart';
import '../../../../../core/constants/app_images.dart';

class ChatRecordWidget extends StatelessWidget {
   const ChatRecordWidget({super.key, required this.isSender});
final bool isSender;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isSender?TextDirection.rtl:TextDirection.ltr,
      child: Row(
        children: [
          Image.asset(AppImages.doctor1,height: 35.h,fit: BoxFit.cover,),
          SizedBox(width: AppDimensions.sizedBox6.w,),
          SvgPicture.asset(AppIcons.resumeRecord),
          SizedBox(width: AppDimensions.sizedBox6.w,),
          Expanded(child: SizedBox(height: 5.h,
              child: LinearProgressIndicator( valueColor:AlwaysStoppedAnimation(AppColors.secondary,),value:.8,stopIndicatorRadius: 100.r,stopIndicatorColor: Colors.white,color: Colors.transparent,backgroundColor: AppColors.background, )))
        ],
      ),
    );
  }
}
