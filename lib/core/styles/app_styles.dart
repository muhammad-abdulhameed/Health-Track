import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/constants.dart';

class AppStyles {
  // Text Styles
  static  TextStyle headline1 = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
    letterSpacing: -0.5,
  );

  static const TextStyle headline2 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
    letterSpacing: -0.3,
  );

  static const TextStyle headline3 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
    letterSpacing: -0.2,
  );

  static const TextStyle headline4 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
    letterSpacing: -0.1,
  );

  static const TextStyle headline5 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const TextStyle headline6 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const TextStyle subtitle1 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.textSecondary,
    letterSpacing: 0.15,
  );

  static const TextStyle subtitle2 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.textSecondary,
    letterSpacing: 0.1,
  );

  static const TextStyle body1 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
    letterSpacing: 0.5,
  );

  static const TextStyle body2 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
    letterSpacing: 0.25,
  );

  static  TextStyle caption = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.textLight,
    letterSpacing: 0.4,
  );

  static const TextStyle overline = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: AppColors.textLight,
    letterSpacing: 1.5,
  );

  static const TextStyle button = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
    letterSpacing: 1.25,
  );

  // Button Styles
  static ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: AppColors.primary,
    foregroundColor: Colors.white,
    elevation: 0,
    padding: const EdgeInsets.symmetric(
      horizontal: AppDimensions.paddingLarge,
      vertical: AppDimensions.paddingMedium,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppDimensions.radius12),
    ),
    textStyle: button,
  );

  static ButtonStyle secondaryButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: Colors.transparent,
    foregroundColor: AppColors.primary,
    elevation: 0,
    side: const BorderSide(color: AppColors.primary, width: 2),
    padding: const EdgeInsets.symmetric(
      horizontal: AppDimensions.paddingLarge,
      vertical: AppDimensions.paddingMedium,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppDimensions.radius12),
    ),
    textStyle: button,
  );

  static ButtonStyle outlineButtonStyle = OutlinedButton.styleFrom(
    foregroundColor: AppColors.primary,
    side: const BorderSide(color: AppColors.primary, width: 2),
    padding: const EdgeInsets.symmetric(
      horizontal: AppDimensions.paddingLarge,
      vertical: AppDimensions.paddingMedium,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppDimensions.radius12),
    ),
    textStyle: button,
  );

  static ButtonStyle textButtonStyle = TextButton.styleFrom(
    foregroundColor: AppColors.primary,
    padding: const EdgeInsets.symmetric(
      horizontal: AppDimensions.paddingMedium,
      vertical: AppDimensions.paddingSmall,
    ),
    textStyle: button,
  );

  // Icon Button Styles
  static ButtonStyle circularIconButtonStyle = IconButton.styleFrom(
    backgroundColor: AppColors.primary,
    foregroundColor: Colors.white,
    shape: const CircleBorder(),
    padding: const EdgeInsets.all(AppDimensions.paddingMedium),
  );

  static ButtonStyle squareIconButtonStyle = IconButton.styleFrom(
    backgroundColor: AppColors.primary,
    foregroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppDimensions.radius8),
    ),
    padding: const EdgeInsets.all(AppDimensions.paddingMedium),
  );

  // Input Field Styles
  static InputDecoration inputDecoration = const InputDecoration(
    filled: true,
    fillColor: AppColors.surface,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(AppDimensions.radius12)),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(AppDimensions.radius12)),
      borderSide: BorderSide.none,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(AppDimensions.radius12)),
      borderSide: BorderSide(color: AppColors.primary, width: 2),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(AppDimensions.radius12)),
      borderSide: BorderSide(color: AppColors.error, width: 2),
    ),
    contentPadding: EdgeInsets.all(AppDimensions.paddingMedium),
    hintStyle: TextStyle(
      color: AppColors.textLight,
      fontSize: 14,
    ),
  );

  static InputDecoration searchInputDecoration = const InputDecoration(
    filled: true,
    fillColor: AppColors.surface,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(AppDimensions.radius16)),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(AppDimensions.radius16)),
      borderSide: BorderSide.none,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(AppDimensions.radius16)),
      borderSide: BorderSide(color: AppColors.primary, width: 2),
    ),
    contentPadding: EdgeInsets.symmetric(
      horizontal: AppDimensions.paddingLarge,
      vertical: AppDimensions.paddingMedium,
    ),
    hintText: 'Search...',
    hintStyle: TextStyle(
      color: AppColors.textLight,
      fontSize: 16,
    ),
    prefixIcon: Icon(
      Icons.search,
      color: AppColors.textLight,
    ),
  );

  // Card Styles
  static BoxDecoration cardDecoration = BoxDecoration(
    color: AppColors.card,
    borderRadius: BorderRadius.circular(AppDimensions.radius12),
    boxShadow: [
      BoxShadow(
        color: AppColors.shadow,
        blurRadius: AppDimensions.shadowBlurRadius,
        offset: const Offset(AppDimensions.shadowOffsetX, AppDimensions.shadowOffsetY),
      ),
    ],
  );

  static BoxDecoration cardDecorationDark = BoxDecoration(
    color: AppColors.cardDark,
    borderRadius: BorderRadius.circular(AppDimensions.radius12),
    boxShadow: [
      BoxShadow(
        color: AppColors.shadowDark,
        blurRadius: AppDimensions.shadowBlurRadius,
        offset: const Offset(AppDimensions.shadowOffsetX, AppDimensions.shadowOffsetY),
      ),
    ],
  );

  static BoxDecoration gradientCardDecoration = BoxDecoration(
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [AppColors.primary, AppColors.secondary],
    ),
    borderRadius: BorderRadius.circular(AppDimensions.radius12),
    boxShadow: [
      BoxShadow(
        color: AppColors.shadow,
        blurRadius: AppDimensions.shadowBlurRadius,
        offset: const Offset(AppDimensions.shadowOffsetX, AppDimensions.shadowOffsetY),
      ),
    ],
  );

  // Chip Styles
  static ChipThemeData chipTheme = ChipThemeData(
    backgroundColor: AppColors.surface,
    selectedColor: AppColors.primary,
    disabledColor: AppColors.textLight,
    labelStyle: body2,
    padding: const EdgeInsets.all(AppDimensions.paddingSmall),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppDimensions.radius50),
    ),
  );

  // Divider Styles
  static const DividerThemeData dividerTheme = DividerThemeData(
    color: AppColors.border,
    thickness: AppDimensions.dividerThickness,
    space: AppDimensions.marginMedium,
  );

  // App Bar Styles
  static AppBarTheme appBarTheme = AppBarTheme(
    backgroundColor: AppColors.primary,
    foregroundColor: Colors.white,
    elevation: 0,
    centerTitle: true,
    titleTextStyle: headline6.copyWith(color: Colors.white),
    iconTheme: const IconThemeData(color: Colors.white),
  );

  // Bottom Navigation Styles
  static BottomNavigationBarThemeData bottomNavigationTheme = BottomNavigationBarThemeData(
    backgroundColor: AppColors.surface,
    selectedItemColor: AppColors.primary,
    unselectedItemColor: AppColors.textLight,
    type: BottomNavigationBarType.fixed,
    elevation: AppDimensions.bottomNavElevation,
  );

  // Floating Action Button Styles
  static FloatingActionButtonThemeData floatingActionButtonTheme = FloatingActionButtonThemeData(
    backgroundColor: AppColors.primary,
    foregroundColor: Colors.white,
    elevation: 6,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppDimensions.radius12),
    ),
  );

  // Dialog Styles
  static DialogTheme dialogTheme = DialogTheme(
    backgroundColor: AppColors.card,
    elevation: 24,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppDimensions.radius16),
    ),
    titleTextStyle: headline6,
    contentTextStyle: body2,
  );

  // Snackbar Styles
  static SnackBarThemeData snackBarTheme = SnackBarThemeData(
    backgroundColor: AppColors.surface,
    contentTextStyle: body2.copyWith(color: Colors.white),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppDimensions.radius8),
    ),
    elevation: AppDimensions.snackbarElevation,
  );

  // Progress Indicator Styles
  static ProgressIndicatorThemeData progressIndicatorTheme = ProgressIndicatorThemeData(
    color: AppColors.primary,
    linearTrackColor: AppColors.border,
    circularTrackColor: AppColors.border,
  );

  // Switch Styles
  static SwitchThemeData switchTheme = SwitchThemeData(
    thumbColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return AppColors.primary;
      }
      return AppColors.textLight;
    }),
    trackColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return AppColors.primary.withOpacity(0.5);
      }
      return AppColors.border;
    }),
  );

  // Radio Styles
  static RadioThemeData radioTheme = RadioThemeData(
    fillColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return AppColors.primary;
      }
      return AppColors.textLight;
    }),
  );

  // Checkbox Styles
  static CheckboxThemeData checkboxTheme = CheckboxThemeData(
    fillColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return AppColors.primary;
      }
      return AppColors.textLight;
    }),
    checkColor: MaterialStateProperty.all(Colors.white),
  );
} 