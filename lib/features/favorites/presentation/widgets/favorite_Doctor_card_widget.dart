
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_track/core/constants/app_colors.dart';
import 'package:health_track/core/constants/app_strings.dart';

import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/reusable_componants/profile_image_widget.dart';
import '../../../doctors/presentation/widgets/doc_name_and_spcialization_widget.dart';
import '../../../doctors/presentation/widgets/professional_doc_widget.dart';

class FavoriteDoctorCardWidget extends StatelessWidget {
  const FavoriteDoctorCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [

        ProfileImageWidget(isRating: true,),

        Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfessionalDocWidget(),
              SizedBox(height: AppDimensions.sizedBox6.h,),
              Row(
                children: [
                  DocNameAndSpcializationWidget(isDocCard: true,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: AppColors.primary,size: AppDimensions.iconSize24.sp,))
                ],
              ),
              SizedBox(height: AppDimensions.sizedBox12.h,),

              Container(
                padding: REdgeInsets.symmetric(vertical: AppDimensions.padding2.h),
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: AppColors.mainGradient),
                  borderRadius: BorderRadius.circular(AppDimensions.radius16.r),
                ),
                child: Text(AppStrings.makeAppointment,style: Theme.of(context).textTheme.bodySmall,),)


            ],
          ),
        ),
      ],
    );
  }
}
