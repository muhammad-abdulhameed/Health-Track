import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/constants/app_icons.dart';
import '../../../../core/constants/app_strings.dart';

class ProfessionalDocWidget extends StatelessWidget {
  const ProfessionalDocWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AppIcons.professional,height: AppDimensions.imageHeight18.h,width:AppDimensions.imageHeight18.h ,),
        SizedBox(width: AppDimensions.sizedBox6.w,),
        Text(AppStrings.professionalDoctor,style:  Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w600),)
      ],
    );
  }
}
