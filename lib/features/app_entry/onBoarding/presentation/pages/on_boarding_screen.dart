import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:health_track/core/constants/app_dimensions.dart';
import 'package:health_track/core/constants/app_strings.dart';
import 'package:health_track/core/reusable_componants/customElevatedBtn.dart';
import 'package:health_track/core/reusable_componants/shader.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/routes/app_routes.dart';

import '../../data/data_sources/on_boarding_local_data_source.dart';
import '../../data/data_sources/on_boarding_static_data_source.dart';
import '../widgets/on_boarding_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  late final PageController _pageController;

  int page = 0;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(
              height: AppDimensions.onboardingHeight.h,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (int index) {
                  setState(() {
                    page = index;
                  });
                },
                itemCount: OnBoardingStaticDataSource.onBoardingItems.length,
                itemBuilder: (BuildContext context, int index) =>
                    OnBoardingWidget(
                      onBoardingItem:
                          OnBoardingStaticDataSource.onBoardingItems[index],
                    ),
              ),
            ),
            SmoothPageIndicator(
              controller: _pageController, // PageController
              count: 3,
              effect: const WormEffect(
                dotHeight: 9,
                dotWidth: 9,
                activeDotColor: AppColors.primary,
              ), // your preferred effect
            ),
            SizedBox(height: AppDimensions.sizedBox40.h),
            CustomElevatedBtn(
              text: page == 2
                  ? AppStrings.onBtnGetStarted
                  : AppStrings.onBtnNext,
              onPressed: () {
                if (page == 2) {
                  OnBoardingLocalDataSource.setOnBoardingSeen();
                  GoRouter.of(context).goNamed(AppRoutes.welcome);

                } else {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                  setState(() {
                    page++;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
