import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_track/features/favorites/presentation/widgets/services_widget.dart';

import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/constants/app_strings.dart';
import 'custom_tap_widget.dart';
import 'favorite_Doctor_card_widget.dart';

class TapBarWidget extends StatefulWidget {
  const TapBarWidget({super.key});

  @override
  State<TapBarWidget> createState() => _TapBarWidgetState();
}

class _TapBarWidgetState extends State<TapBarWidget>
    with SingleTickerProviderStateMixin {
  int selectedIndex = 0;
  List<String> tapsTitle = [AppStrings.doctors, AppStrings.services];
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: tapsTitle.length, vsync: this);
    tabController.addListener(() {


        setState(() {
          selectedIndex = tabController.index;
        });

    });
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: tabController,
          indicatorColor: Colors.transparent,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          labelPadding: EdgeInsets.symmetric(horizontal: 4.w),
          tabAlignment: TabAlignment.center,
          dividerHeight: 0,
          indicatorPadding: EdgeInsets.zero,

          tabs: List.generate(
            tapsTitle.length,
            (index) => CustomTapWidget(
              title: tapsTitle[index],
              isSelected: index == tabController.index,
              onTap: () {
                selectedIndex = index;
                tabController.animateTo(index);
              },
            ),
          ),
        ),

        Padding(
          padding: REdgeInsets.symmetric(vertical: AppDimensions.padding24.h),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 500.h, minHeight: 100.h),
            child: TabBarView(
              controller: tabController,
              children: [
                ListView.separated(
                  itemBuilder: (context, index) => FavoriteDoctorCardWidget(),
                  scrollDirection: Axis.vertical,
                  separatorBuilder: (_, _) =>
                      SizedBox(height: AppDimensions.sizedBox12.h),
                  itemCount: 4,
                ),
                ListView.separated(
                  itemBuilder: (context, index) => ServicesWidget(index: index,),
                  scrollDirection: Axis.vertical,
                  separatorBuilder: (_, _) =>
                      SizedBox(height: AppDimensions.sizedBox12.h),
                  itemCount: 4,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
