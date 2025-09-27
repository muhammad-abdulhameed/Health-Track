import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/constants/app_icons.dart';
import '../../../../core/reusable_componants/custom_scroll_physics.dart';
import '../../../../core/widgets/app_icon.dart';

class SpecialtiesListViewWidget extends StatefulWidget {
  const SpecialtiesListViewWidget({super.key});

  @override
  State<SpecialtiesListViewWidget> createState() => _SpecialtiesListViewWidgetState();
}

class _SpecialtiesListViewWidgetState extends State<SpecialtiesListViewWidget> {
  late ScrollController scrollController;

  int currentIndex = 0;

  @override
  void initState() {
    scrollController = ScrollController();

    scrollController.addListener(() {
      // This listener updates the UI to show which date is currently selected
      // It works together with smooth scrolling to keep UI in sync

      // Calculate the current index based on scroll position
      // itemExtent = width of one date (45) + spacing (6) = 51 pixels
      final itemExtent =
          50.h + AppDimensions.sizedBox32.w;

      // Convert scroll position to date index
      // Example: scroll position 100 ÷ 51 = 1.96 → round to 2 (third date)
      final newIndex = (scrollController.offset / itemExtent).round();

      // Only update UI if the selected date changed and it's a valid index
      if (newIndex != currentIndex && newIndex >= 0 && newIndex < 30) {
        setState(() {
          currentIndex = newIndex; // ← Update which date is highlighted
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: REdgeInsets.symmetric(horizontal: AppDimensions.padding32.w),
      sliver: SliverToBoxAdapter(
        child: SizedBox(

          width: double.infinity,
          height: AppDimensions.sizedBox55.h,
          child: Stack(
            children: [
              // Date List - Full width with proper padding
              Positioned.fill(
                child: Padding(
                  padding: REdgeInsets.symmetric(horizontal: AppDimensions.padding44.w,vertical: 2.h),
                  // 48.w for arrow + 8.w margin
                  child: ListView.separated(
                    controller: scrollController,
                    clipBehavior: Clip.hardEdge,
                    // Use smooth scrolling physics for stable movement
                    physics: DateSnapScrollPhysics(
                      parent: const BouncingScrollPhysics(),
                      itemWidth: AppDimensions.specialitiesBoxWidth.w,
                      spacing: AppDimensions.sizedBox32.w,
                      padding: 0.w, // ← Restore the padding parameter
                    ),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) =>
                        SizedBox(width: AppDimensions.sizedBox32.w),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {

                        },
                        child: AppIconStyles.squareSpecialty(
                          iconPath: AppIcons.cardiology,

                          iconHeight: AppDimensions.iconSize30.h,
                          iconWidth: AppDimensions.iconSize30.w,
                        )
                      );
                    },
                    itemCount: 30,
                  ),
                ),
              ),

              // Left Arrow Button - Positioned on top
              Positioned(
                left: -15.w,
                top: 0,
                child: IconButton(
                  iconSize: AppDimensions.iconSize24.sp,
                  constraints: BoxConstraints(
                    minWidth: 2.w,
                    minHeight: AppDimensions.calendarDayHeightSize.h,
                  ),
                  onPressed: () {
                    if (currentIndex > 0) {
                      final targetIndex = currentIndex - 1;
                      final itemExtent =
                         AppDimensions.specialitiesBoxWidth.w +
                              AppDimensions.sizedBox32.w;
                      scrollController.animateTo(
                        targetIndex * itemExtent,
                        // ← Remove the +10 to make it stable
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.primary,
                  ),
                ),
              ),

              // Right Arrow Button - Positioned on top
              Positioned(
                right: -20.w,
                child: IconButton(
                  constraints: BoxConstraints(
                    minWidth: 2.w,
                    minHeight: AppDimensions.calendarDayHeightSize.h,
                  ),
                  iconSize: AppDimensions.iconSize24.sp,
                  onPressed: () {
                    if (currentIndex < 27) {
                      // 30 items total, 0-29
                      final targetIndex = currentIndex + 1;
                      final itemExtent =
                          AppDimensions.specialitiesBoxWidth.w +
                              AppDimensions.sizedBox32.w;
                      scrollController.animateTo(
                        targetIndex * itemExtent,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.primary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
