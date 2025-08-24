import 'package:flutter/material.dart';

class AppColors {
  //gradient colors
  static const List<Color> mainGradient = [
    Color(0xFF33E4DB),
    Color(0xFF00BBD3)
  ]; // Teal
  static const List<Color> onBoardingContainerGradient = [
    Color(0x0ffcf2ff),
    Color(0xFFECF2FF),
  ]; // Teal

  // Primary Colors (Teal/Cyan from Figma)
  static const Color primary = Color(0xFF00BCD4); // Main teal
  static const Color primaryLight = Color(0xFF4DD0E1); // Light teal
  static const Color primaryDark = Color(0xFF0097A7); // Dark teal
  static const Color primaryAccent = Color(0xFF26C6DA); // Accent teal
  
  // Secondary Colors
  static const Color secondary = Color(0xFF03DAC6); // Cyan
  static const Color secondaryLight = Color(0xFF66FFF8); // Light cyan
  static const Color secondaryDark = Color(0xFF018786); // Dark cyan
  
  // Accent Colors
  static const Color accent = Color(0xFFFF4081);
  static const Color accentLight = Color(0xFFFF79B0);
  static const Color accentDark = Color(0xFFC60055);
  
  // Background Colors
  static const Color background = Color(0xFFFFFFFF); // Dark background from Figma
  static const Color surface =  Color(0xFFE9F6FE); // Dark surface from Figma
  static const Color card = Color(0xFFFFFFFF); // White cards from Figma
  static const Color cardDark = Color(0xFF2A2A2A); // Dark card variant
  static const Color onContainer =  Color(0xFFE9F6FE); // Light grey background
  
  // Status Colors
  static const Color success = Color(0xFF4CAF50);
  static const Color successLight = Color(0xFF81C784);
  static const Color successDark = Color(0xFF388E3C);
  
  static const Color warning = Color(0xFFFF9800);
  static const Color warningLight = Color(0xFFFFB74D);
  static const Color warningDark = Color(0xFFF57C00);
  
  static const Color error = Color(0xFFB00020);
  static const Color errorLight = Color(0xFFEF5350);
  static const Color errorDark = Color(0xFFD32F2F);
  
  static const Color info = Color(0xFF2196F3);
  static const Color infoLight = Color(0xFF64B5F6);
  static const Color infoDark = Color(0xFF1976D2);
  
  // Text Colors
  static const Color textPrimary = Color(0xFF212121);
  static const Color textSecondary = Color(0xFFFFFFFF);
  static const Color textLight = Color(0xFFBDBDBD);
  static const Color textDisabled = Color(0xFF9E9E9E);
  
  // Border Colors
  static const Color border = Color(0xFFE0E0E0);
  static const Color borderLight = Color(0xFFF5F5F5);
  static const Color borderDark = Color(0xFFBDBDBD);
  
  // Shadow Colors
  static const Color shadow = Color(0x1F000000);
  static const Color shadowLight = Color(0x0A000000);
  static const Color shadowDark = Color(0x33000000);
  
  // Medical Specific Colors
  static const Color appointment = Color(0xFF2196F3);
  static const Color consultation = Color(0xFF4CAF50);
  static const Color emergency = Color(0xFFF44336);
  static const Color routine = Color(0xFF9C27B0);
  static const Color specialist = Color(0xFFFF9800);
  static const Color labTest = Color(0xFF00BCD4);
  static const Color imaging = Color(0xFF673AB7);
  static const Color vaccination = Color(0xFF8BC34A);
  static const Color surgery = Color(0xFFE91E63);
  static const Color therapy = Color(0xFF795548);
  static const Color confirmed = Color(0xFF4CAF50);
  static const Color pending = Color(0xFFFF9800);
  static const Color cancelled = Color(0xFFF44336);
  static const Color completed = Color(0xFF2196F3);
} 