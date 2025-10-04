import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_track/core/constants/app_dimensions.dart';
import 'package:health_track/core/constants/app_images.dart';
import 'package:health_track/core/core.dart';
import 'package:health_track/features/main_layout/presentation/widgets/home_app_bar_widget.dart';
import 'package:health_track/features/taps/home_tap/presentation/pages/home_tap.dart';
import 'package:health_track/features/taps/profile_tap/presentation/pages/profile_tap.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_icons.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    // Add your pages here
    HomeTap(), // Placeholder for Home
    Container(color: Colors.blue), // Placeholder for Messages
    ProfileTap(), // Placeholder for Profile
    Container(color: Colors.yellow), // Placeholder for Calendar
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent, // 👈 no splash
            highlightColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: _selectedIndex,
            onTap: (value) {
              setState(() {
                _selectedIndex = value;
              });
            },
            elevation: 0,
            backgroundColor: AppColors.surface,
            type: BottomNavigationBarType.fixed,

            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppIcons.homeEmptyIcon,
                  height: AppDimensions.iconSize24.h,
                  width: AppDimensions.iconSize24.w,
                ),
                label: AppStrings.home,
                backgroundColor: AppColors.surface,
                activeIcon: SvgPicture.asset(
                  AppIcons.homeSelectedIcon,
                  height: AppDimensions.iconSize24.h,
                  width: AppDimensions.iconSize24.w,
                ),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppIcons.messageEmptyIcon,
                  height: AppDimensions.iconSize24.h,
                  width: AppDimensions.iconSize24.w,
                ),
                label: AppStrings.messages,
                backgroundColor: AppColors.surface,
                activeIcon: SvgPicture.asset(
                  AppIcons.messageSelectedIcon,
                  height: AppDimensions.iconSize24.h,
                  width: AppDimensions.iconSize24.w,
                ),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppIcons.profileEmptyIcon,
                  height: AppDimensions.iconSize24.h,
                  width: AppDimensions.iconSize24.w,
                ),
                label: AppStrings.profile,
                backgroundColor: AppColors.surface,
                activeIcon: SvgPicture.asset(
                  AppIcons.profileSelectedIcon,
                  height: AppDimensions.iconSize24.h,
                  width: AppDimensions.iconSize24.w,
                ),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppIcons.calenderEmptyIcon,
                  height: AppDimensions.iconSize24.h,
                  width: AppDimensions.iconSize24.w,
                ),
                label: AppStrings.calendar,
                backgroundColor: AppColors.surface,
                activeIcon: SvgPicture.asset(
                  AppIcons.calenderSelectedIcon,
                  height: AppDimensions.iconSize24.h,
                  width: AppDimensions.iconSize24.w,
                ),
              ),
            ],
          ),
        ),
        body: _pages[_selectedIndex],
      ),
    );
  }
}
