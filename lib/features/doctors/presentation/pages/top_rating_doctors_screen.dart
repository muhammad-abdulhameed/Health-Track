import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_track/core/core.dart';

import '../../../../core/reusable_componants/custom_app_bar.dart';
import '../../../filter/presentation/pages/filter_and_doctors_row_widget.dart';
import '../widgets/rating_doctor_card_widget.dart';

class TopRatingDoctorsScreen extends StatelessWidget {
  const TopRatingDoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: CustomAppBar.titleAppBar(AppStrings.rating,context),
        body:Padding(
          padding: REdgeInsets.symmetric(horizontal: AppDimensions.padding32.w,vertical: AppDimensions.padding16.h),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child:FilterAndDoctorsRowWidget()),
              SliverToBoxAdapter(child: SizedBox(height: AppDimensions.sizedBox22.h,),),
              SliverList.separated(itemBuilder: (context, index) =>const RatingDoctorCardWidget() , separatorBuilder:(context, index) =>  SizedBox(height: AppDimensions.sizedBox32.h,), itemCount: 10)

            ],
          ),
        ) ,
      ),
    );
  }
}
