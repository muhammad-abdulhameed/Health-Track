import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_track/features/favorites/presentation/widgets/services_widget.dart';

import '../constants/app_dimensions.dart';
import '../constants/app_strings.dart';
import '../../features/favorites/presentation/widgets/custom_tap_widget.dart';
import '../../features/favorites/presentation/widgets/favorite_Doctor_card_widget.dart';

class CustomTapBarWidget extends StatefulWidget {
  const CustomTapBarWidget({super.key, required this.tapsTitle, required this.tapsContent, required this.size});
 final List<String> tapsTitle;
 final List<Widget> tapsContent ;
 final CustomTapSize size;
  @override
  State<CustomTapBarWidget> createState() => _CustomTapBarWidgetState();
}

class _CustomTapBarWidgetState extends State<CustomTapBarWidget>
    with SingleTickerProviderStateMixin {
  int selectedIndex = 0;


  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: widget.tapsTitle.length, vsync: this,);
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
          isScrollable: true,
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
            widget.tapsTitle.length,
            (index) => CustomTapWidget(
              size: widget.size,
              title: widget.tapsTitle[index],
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
              children: widget.tapsContent,

               /* ListView.separated(
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
                ),*/

            ),
          ),
        ),
      ],
    );
  }
}
