import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'constants/constants.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.background,
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: const ColorScheme.light(
        primary: AppColors.primary,
        secondary: AppColors.secondary,
        surface: AppColors.surface,
        background: AppColors.background,
        error: AppColors.error,
        onPrimary: Colors.white,
        onSecondary: Colors.black,
        onSurface: AppColors.textPrimary,
        onBackground: AppColors.textPrimary,
        onError: Colors.white,
      ),
      appBarTheme:  AppBarTheme(

        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,

        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(

          fontFamily: AppStrings.mainFont,
          fontWeight: FontWeight.w400,
          fontSize: AppDimensions.fontSize24.sp,
          color: AppColors.textSecondary,
        ),
      ),

      cardTheme: CardThemeData(
        color: AppColors.card,
        elevation: AppDimensions.cardElevation,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radius12),
        ),
        margin: const EdgeInsets.all(AppDimensions.marginSmall),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundBuilder: (context, states, child) => Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: AppColors.mainGradient,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(100.r),
            ),
            child: child,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: AppDimensions.paddingLarge.w,
            vertical: AppDimensions.paddingSmall.h,
          ),
          minimumSize: Size(191.w, 45.h),
          maximumSize: Size(269.w, 45.h),
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primary,
          side: const BorderSide(color: AppColors.primary),
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimensions.paddingLarge,
            vertical: AppDimensions.paddingMedium,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.radius12),
          ),
          textStyle:  TextStyle(
            fontSize: AppDimensions.paddingLarge.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          elevation: 0,
          overlayColor: Colors.transparent,
          foregroundColor: AppColors.primary,
          minimumSize: Size.zero,
          padding: EdgeInsets.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          textStyle: TextStyle(
            fontSize: AppDimensions.fontSize12.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.surface,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radius12),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radius12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radius12),
          borderSide: const BorderSide(
            color: AppColors.primary,
            width: AppDimensions.borderWidthThick,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radius12),
          borderSide: const BorderSide(
            color: AppColors.error,
            width: AppDimensions.borderWidthThick,
          ),
        ),
        contentPadding: const EdgeInsets.all(AppDimensions.paddingMedium),
        hintStyle: TextStyle(
          color: AppColors.textLight,
          fontSize: AppDimensions.paddingMedium.sp,
        ),
      ),

      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontFamily: AppStrings.mainFont,
          fontSize: AppDimensions.fontSize32.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.textPrimary,
        ),
        displayMedium: TextStyle(
          fontSize: AppDimensions.paddingXL.sp,
          fontWeight: FontWeight.bold,
          color: AppColors.textPrimary,
        ),
        headlineLarge:  TextStyle(
          fontFamily: AppStrings.mainFont,
          fontSize: AppDimensions.fontSize32.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.textPrimary,
        ),
        headlineMedium: TextStyle(
          fontSize: AppDimensions.paddingLarge.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.textPrimary,
        ),
        headlineSmall: TextStyle(
          fontFamily: AppStrings.mainFont,
          fontSize: AppDimensions.fontSize12.sp,
          fontWeight: FontWeight.w300,
          color: AppColors.textPrimary,
        ),
        bodyLarge: TextStyle(
          fontFamily: AppStrings.mainFont,
          fontWeight: FontWeight.w400,
          fontSize: AppDimensions.fontSize24.sp,
          color: AppColors.primary,
        ),
        bodyMedium: TextStyle(
          fontFamily: AppStrings.mainFont,
          fontWeight: FontWeight.w400,
          fontSize: AppDimensions.fontSize20.sp,
          color: AppColors.textSecondary,
        ),
        bodySmall: TextStyle(
          fontSize: AppDimensions.paddingSmall.sp,
          color: AppColors.textLight,
        ),
        labelLarge: TextStyle(
          fontFamily: AppStrings.mainFont,
          fontWeight: FontWeight.w400,
          fontSize: AppDimensions.fontSize20.sp,
          color: AppColors.textPrimary,
        ),
      ),
      iconTheme: const IconThemeData(
        color: AppColors.primary,
        size: AppDimensions.iconSizeMedium,
      ),
      dividerTheme: const DividerThemeData(
        color: AppColors.border,
        thickness: AppDimensions.dividerThickness,
        space: AppDimensions.marginMedium,
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primary,
        secondary: AppColors.secondary,
        surface: Color(0xFF1E1E1E),
        background: Color(0xFF121212),
        error: AppColors.error,
        onPrimary: Colors.white,
        onSecondary: Colors.black,
        onSurface: Colors.white,
        onBackground: Colors.white,
        onError: Colors.white,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF1E1E1E),
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: AppDimensions.paddingLarge,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
      cardTheme: CardThemeData(
        color: const Color(0xFF1E1E1E),
        elevation: AppDimensions.cardElevation,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radius12),
        ),
        margin: const EdgeInsets.all(AppDimensions.marginSmall),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(204.w, 45.h),
          maximumSize: Size(204.w, 48.h),
          backgroundColor: AppColors.textPrimary,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimensions.paddingLarge,
            vertical: AppDimensions.paddingMedium,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.r),
          ),
          textStyle: const TextStyle(
            fontSize: AppDimensions.paddingLarge,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primary,
          side: const BorderSide(color: AppColors.primary),
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimensions.paddingLarge,
            vertical: AppDimensions.paddingMedium,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.radius12),
          ),
          textStyle: const TextStyle(
            fontSize: AppDimensions.paddingLarge,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.primary,
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimensions.paddingMedium,
            vertical: AppDimensions.paddingSmall,
          ),
          textStyle: const TextStyle(
            fontSize: AppDimensions.paddingLarge,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: const Color(0xFF1E1E1E),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radius12),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radius12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radius12),
          borderSide: const BorderSide(
            color: AppColors.primary,
            width: AppDimensions.borderWidthThick,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radius12),
          borderSide: const BorderSide(
            color: AppColors.error,
            width: AppDimensions.borderWidthThick,
          ),
        ),
        contentPadding: const EdgeInsets.all(AppDimensions.paddingMedium),
        hintStyle: TextStyle(
          color: AppColors.textLight,
          fontSize: AppDimensions.paddingMedium,
        ),
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontSize: AppDimensions.paddingXXL,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        displayMedium: TextStyle(
          fontSize: AppDimensions.paddingXL,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        headlineLarge: TextStyle(
          fontSize: AppDimensions.paddingLarge,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        headlineMedium: TextStyle(
          fontSize: AppDimensions.paddingLarge,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        bodyLarge: TextStyle(
          fontSize: AppDimensions.paddingLarge,
          color: Colors.white,
        ),
        bodyMedium: TextStyle(
          fontSize: AppDimensions.paddingMedium,
          color: Colors.white70,
        ),
        bodySmall: TextStyle(
          fontSize: AppDimensions.paddingSmall,
          color: Colors.white60,
        ),
      ),
      iconTheme: const IconThemeData(
        color: AppColors.primary,
        size: AppDimensions.iconSizeMedium,
      ),
      dividerTheme: const DividerThemeData(
        color: Colors.white24,
        thickness: AppDimensions.dividerThickness,
        space: AppDimensions.marginMedium,
      ),
    );
  }
}
