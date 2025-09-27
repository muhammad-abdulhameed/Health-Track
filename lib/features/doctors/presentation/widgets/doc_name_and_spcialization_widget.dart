import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';

class DocNameAndSpcializationWidget extends StatelessWidget {
  const DocNameAndSpcializationWidget({super.key,this.isInfo=false});
final bool isInfo;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width: AppDimensions.sizedBox19.w,),
        Text(
          "Dr. Stella Kane",
          style:isInfo?Theme.of(context).textTheme.bodyMedium: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.primary),
        ),
        Text(
          maxLines: 5,overflow: TextOverflow.fade,
          "Heart Surgeon - Flower Hospitals",
          style:isInfo?Theme.of(context).textTheme.bodySmall: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w400),
        ),
      ],
    ) ;
  }
}
