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
        error: AppColors.error,
        onPrimary: Colors.white,
        onSecondary: Colors.black,
        onSurface: AppColors.textPrimary,
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
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.surface,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.textLight,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
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
            horizontal: AppDimensions.padding24.w,
            vertical: AppDimensions.padding8.h,
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
            horizontal: AppDimensions.padding24,
            vertical: AppDimensions.padding16,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.radius12),
          ),
          textStyle:  TextStyle(
            fontSize: AppDimensions.padding24.sp,
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
        contentPadding: const EdgeInsets.all(AppDimensions.padding16),
        hintStyle: TextStyle(
          color: AppColors.textLight,
          fontSize: AppDimensions.padding16.sp,
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
          fontSize: AppDimensions.padding32.sp,
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
          fontSize: AppDimensions.padding24.sp,
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
          fontFamily: AppStrings.mainFont,
          fontWeight: FontWeight.w400,
          fontSize: AppDimensions.fontSize14.sp,
          color: AppColors.textSecondary,
        ),
        labelLarge: TextStyle(
          fontFamily: AppStrings.mainFont,
          fontWeight: FontWeight.w400,
          fontSize: AppDimensions.fontSize20.sp,
          color: AppColors.textPrimary,
        ),
        titleMedium: TextStyle(
          fontFamily: AppStrings.mainFont,
          fontWeight: FontWeight.w600,
          fontSize: AppDimensions.fontSize16.sp,
          color: AppColors.textSecondary,
        ),
        titleSmall: TextStyle(
          fontFamily: AppStrings.mainFont,
          fontWeight: FontWeight.w500,
          fontSize: AppDimensions.fontSize14.sp,
          color: AppColors.textSecondary,
        ),
      ),
      iconTheme: const IconThemeData(
        color: AppColors.primary,
        size: AppDimensions.iconSize24,
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
        error: AppColors.error,
        onPrimary: Colors.white,
        onSecondary: Colors.black,
        onSurface: Colors.white,
        onError: Colors.white,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF1E1E1E),
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: AppDimensions.padding24,
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
            horizontal: AppDimensions.padding24,
            vertical: AppDimensions.padding16,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.r),
          ),
          textStyle: const TextStyle(
            fontSize: AppDimensions.padding24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primary,
          side: const BorderSide(color: AppColors.primary),
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimensions.padding24,
            vertical: AppDimensions.padding16,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.radius12),
          ),
          textStyle: const TextStyle(
            fontSize: AppDimensions.padding24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.primary,
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimensions.padding16,
            vertical: AppDimensions.padding8,
          ),
          textStyle: const TextStyle(
            fontSize: AppDimensions.padding24,
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
        contentPadding: const EdgeInsets.all(AppDimensions.padding16),
        hintStyle: TextStyle(
          color: AppColors.textLight,
          fontSize: AppDimensions.padding16,
        ),
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontSize: AppDimensions.padding41,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        displayMedium: TextStyle(
          fontSize: AppDimensions.padding32,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        headlineLarge: TextStyle(
          fontSize: AppDimensions.padding24,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        headlineMedium: TextStyle(
          fontSize: AppDimensions.padding24,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        bodyLarge: TextStyle(
          fontSize: AppDimensions.padding24,
          color: Colors.white,
        ),
        bodyMedium: TextStyle(
          fontSize: AppDimensions.padding16,
          color: Colors.white70,
        ),
        bodySmall: TextStyle(
          fontSize: AppDimensions.padding8,
          color: Colors.white60,
        ),
      ),
      iconTheme: const IconThemeData(
        color: AppColors.primary,
        size: AppDimensions.iconSize24,
      ),
      dividerTheme: const DividerThemeData(
        color: Colors.white24,
        thickness: AppDimensions.dividerThickness,
        space: AppDimensions.marginMedium,
      ),
    );
  }
}
