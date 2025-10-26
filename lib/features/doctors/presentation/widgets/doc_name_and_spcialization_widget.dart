import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';

class DocNameAndSpcializationWidget extends StatelessWidget {
  const DocNameAndSpcializationWidget({super.key,this.isDocCard=false, this.phone});
final bool isDocCard;
final String name="Dr. Stella Kane";
final String supName="Dr. Stella Kane";
final String? phone;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: AppDimensions.sizedBox19.w,),
          Text(
            "Dr. Stella Kane",
            style:!isDocCard?Theme.of(context).textTheme.bodyMedium: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.primary),
          ),

          Text(
            maxLines: 5,overflow: TextOverflow.ellipsis,
            "Heart Surgeon - Flower Hospitals",
            style:!isDocCard?Theme.of(context).textTheme.bodySmall: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w400),
          ),
          if(phone!=null)
          Text(
            maxLines: 1,overflow: TextOverflow.ellipsis,
            phone??'',
            style:!isDocCard?Theme.of(context).textTheme.bodySmall: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w400),
          ),
        ],
      ),
    ) ;
  }
}
