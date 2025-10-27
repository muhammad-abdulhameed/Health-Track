import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_track/core/constants/app_images.dart';
import 'package:health_track/core/core.dart';
import 'package:health_track/features/taps/chats_tap/presentation/widgets/chat_recored_widget.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_dimensions.dart';
import '../../../../../core/constants/app_strings.dart';

class ChatMassageWidget extends StatelessWidget {
  const ChatMassageWidget({super.key,required this.isSender, required this.isRecord});
  final bool isSender;
  final bool isRecord;
  @override
  Widget build(BuildContext context) {
    return   Container(
      width: 220.w,

      alignment: isSender?Alignment.centerRight:Alignment.centerLeft,
      padding: REdgeInsets.symmetric(horizontal: AppDimensions.padding24.w,vertical: AppDimensions.padding8.h),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: AppColors.surface,

          borderRadius: BorderRadius.only(bottomLeft:isSender?Radius.circular(AppDimensions.radius20.r):Radius.zero,topLeft: Radius.circular(AppDimensions.radius20.r),topRight: Radius.circular(AppDimensions.radius20.r),bottomRight: isSender ?Radius.zero:Radius.circular(AppDimensions.radius20.r.r) )
          , border: Border.all(color:isSender?AppColors.surface: AppColors.primary)
      ),
      child:  isRecord?ChatRecordWidget(isSender: isSender,):

      Text(AppStrings.loremIpsumLong,style: Theme.of(context).textTheme.labelLarge),
    );
  }
}
