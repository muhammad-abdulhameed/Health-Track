import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_track/features/taps/home_tap/presentation/widgets/schedual_date_widget.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_dimensions.dart';
import '../../../../../core/reusable_componants/custom_scroll_physics.dart';

class ScheduleDatesListViewWidget extends StatefulWidget {
  const ScheduleDatesListViewWidget({super.key});

  @override
  State<ScheduleDatesListViewWidget> createState() => _ScheduleDatesListViewWidgetState();
}

class _ScheduleDatesListViewWidgetState extends State<ScheduleDatesListViewWidget> {
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
          AppDimensions.calendarDayWidthSize + AppDimensions.sizedBox6;

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
    return  SizedBox(
            width: double.infinity,
            height: AppDimensions.calendarDayHeightSize.h,
            child: Stack(
              children: [
                // Date List - Full width with proper padding
                Positioned.fill(
                  child: Padding(
                    padding: REdgeInsets.symmetric(horizontal: 30.w),
                    // 48.w for arrow + 8.w margin
                    child: ListView.separated(
                      controller: scrollController,
                      clipBehavior: Clip.hardEdge,
                      // Use smooth scrolling physics for stable movement
                      physics: DateSnapScrollPhysics(
                        parent: const BouncingScrollPhysics(),
                        itemWidth: AppDimensions.calendarDayWidthSize.w,
                        spacing: AppDimensions.sizedBox6,
                        padding: 30.w, // ← Restore the padding parameter
                      ),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) =>
                          SizedBox(width: AppDimensions.sizedBox6),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            final itemExtent =
                                AppDimensions.calendarDayWidthSize +
                                    AppDimensions.sizedBox6;
                            scrollController.animateTo(
                              index * itemExtent,
                              // ← Remove the +10 to make it stable
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: SchedualDateWidget(
                            test: index.toString(),
                            isSelected: index == currentIndex,
                          ),
                        );
                      },
                      itemCount: 30,
                    ),
                  ),
                ),

                // Left Arrow Button - Positioned on top
                Positioned(
                  left: -9.w,
                  top: 0,
                  child: SizedBox(
                    width: 48.w,
                    height: AppDimensions.calendarDayHeightSize.h,
                    child: IconButton(
                      iconSize: AppDimensions.iconSize24.sp,
                      onPressed: () {
                        if (currentIndex > 0) {
                          final targetIndex = currentIndex - 1;
                          final itemExtent =
                              AppDimensions.calendarDayWidthSize +
                                  AppDimensions.sizedBox6;
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
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ),
                ),

                // Right Arrow Button - Positioned on top
                Positioned(
                  right: -9.w,
                  top: 0,
                  child: SizedBox(
                    width: 48.w,
                    height: AppDimensions.calendarDayHeightSize.h,
                    child: IconButton(
                      iconSize: AppDimensions.iconSize24.sp,
                      onPressed: () {
                        if (currentIndex < 29) {
                          // 30 items total, 0-29
                          final targetIndex = currentIndex + 1;
                          final itemExtent =
                              AppDimensions.calendarDayWidthSize +
                                  AppDimensions.sizedBox6;
                          scrollController.animateTo(
                            targetIndex * itemExtent,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
