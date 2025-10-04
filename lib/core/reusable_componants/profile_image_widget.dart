import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_colors.dart';
import '../constants/app_dimensions.dart';
import '../constants/app_images.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({super.key,this.isRating=false});
final bool isRating;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        ClipRRect(child: Image.asset(AppImages.doctor1,height:isRating?AppDimensions.imageHeight70.h: AppDimensions.imageHeight107.h,width:isRating?AppDimensions.imageHeight70.h: AppDimensions.imageHeight107.h,fit: BoxFit.cover,)),
        SizedBox(width: AppDimensions.sizedBox10.w,),
      ],
    );
  }
}
