import 'package:health_track/core/constants/app_strings.dart';
import 'package:health_track/features/onBoarding/domain/entities/on_boarding_item.dart';

import '../../../../core/constants/app_images.dart';

class OnBoardingStaticDataSource{
 static  final List<OnBoardingItem> onBoardingItems = [
    OnBoardingItem(
      image: AppImages.onBoardingImage1,
      title: AppStrings.onBoardingTitle1,
      description: AppStrings.onBoardingDesc1,
    ),
    const OnBoardingItem(
      image: AppImages.onBoardingImage2,
      title: AppStrings.onBoardingTitle2,
      description: AppStrings.onBoardingDesc2,
    ),
    const OnBoardingItem(
      image: AppImages.onBoardingImage3,
      title: AppStrings.onBoardingTitle3,
      description: AppStrings.onBoardingDesc3,
    ),
  ];
}