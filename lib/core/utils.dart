import 'package:flutter/material.dart';
import 'constants/constants.dart';

class AppUtils {
  // Date and Time Utilities
  static String formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }

  static String formatTime(DateTime time) {
    return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
  }

  static String formatDateTime(DateTime dateTime) {
    return '${formatDate(dateTime)} ${formatTime(dateTime)}';
  }

  static String getRelativeTime(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);

    if (difference.inDays > 0) {
      return '${difference.inDays} day${difference.inDays > 1 ? 's' : ''} ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours} hour${difference.inHours > 1 ? 's' : ''} ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes} minute${difference.inMinutes > 1 ? 's' : ''} ago';
    } else {
      return 'Just now';
    }
  }

  static bool isToday(DateTime date) {
    final now = DateTime.now();
    return date.year == now.year && date.month == now.month && date.day == now.day;
  }

  static bool isYesterday(DateTime date) {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    return date.year == yesterday.year && date.month == yesterday.month && date.day == yesterday.day;
  }

  static bool isThisWeek(DateTime date) {
    final now = DateTime.now();
    final startOfWeek = now.subtract(Duration(days: now.weekday - 1));
    final endOfWeek = startOfWeek.add(const Duration(days: 6));
    return date.isAfter(startOfWeek.subtract(const Duration(days: 1))) && 
           date.isBefore(endOfWeek.add(const Duration(days: 1)));
  }

  static bool isThisMonth(DateTime date) {
    final now = DateTime.now();
    return date.year == now.year && date.month == now.month;
  }

  // Medical Appointment Utilities
  static String getAppointmentStatus(String status) {
    switch (status.toUpperCase()) {
      case 'SCHEDULED':
        return 'Scheduled';
      case 'CONFIRMED':
        return 'Confirmed';
      case 'IN_PROGRESS':
        return 'In Progress';
      case 'COMPLETED':
        return 'Completed';
      case 'CANCELLED':
        return 'Cancelled';
      case 'NO_SHOW':
        return 'No Show';
      case 'RESCHEDULED':
        return 'Rescheduled';
      case 'PENDING':
        return 'Pending';
      default:
        return 'Unknown';
    }
  }

  static Color getAppointmentStatusColor(String status) {
    switch (status.toUpperCase()) {
      case 'SCHEDULED':
        return AppColors.appointment;
      case 'CONFIRMED':
        return AppColors.confirmed;
      case 'IN_PROGRESS':
        return AppColors.pending;
      case 'COMPLETED':
        return AppColors.completed;
      case 'CANCELLED':
        return AppColors.cancelled;
      case 'NO_SHOW':
        return AppColors.error;
      case 'RESCHEDULED':
        return AppColors.warning;
      case 'PENDING':
        return AppColors.pending;
      default:
        return AppColors.textSecondary;
    }
  }

  static String getAppointmentType(String type) {
    switch (type.toUpperCase()) {
      case 'CONSULTATION':
        return 'Consultation';
      case 'FOLLOW_UP':
        return 'Follow Up';
      case 'EMERGENCY':
        return 'Emergency';
      case 'ROUTINE':
        return 'Routine';
      case 'SPECIALIST':
        return 'Specialist';
      case 'LAB_TEST':
        return 'Lab Test';
      case 'IMAGING':
        return 'Imaging';
      case 'VACCINATION':
        return 'Vaccination';
      case 'SURGERY':
        return 'Surgery';
      case 'THERAPY':
        return 'Therapy';
      default:
        return 'Appointment';
    }
  }

  static Color getAppointmentTypeColor(String type) {
    switch (type.toUpperCase()) {
      case 'CONSULTATION':
        return AppColors.consultation;
      case 'FOLLOW_UP':
        return AppColors.routine;
      case 'EMERGENCY':
        return AppColors.emergency;
      case 'ROUTINE':
        return AppColors.routine;
      case 'SPECIALIST':
        return AppColors.specialist;
      case 'LAB_TEST':
        return AppColors.labTest;
      case 'IMAGING':
        return AppColors.imaging;
      case 'VACCINATION':
        return AppColors.vaccination;
      case 'SURGERY':
        return AppColors.surgery;
      case 'THERAPY':
        return AppColors.therapy;
      default:
        return AppColors.appointment;
    }
  }

  static String getMedicalSpecialty(String specialty) {
    switch (specialty.toUpperCase()) {
      case 'CARDIOLOGY':
        return 'Cardiology';
      case 'DERMATOLOGY':
        return 'Dermatology';
      case 'ENDOCRINOLOGY':
        return 'Endocrinology';
      case 'GASTROENTEROLOGY':
        return 'Gastroenterology';
      case 'GENERAL_MEDICINE':
        return 'General Medicine';
      case 'GYNECOLOGY':
        return 'Gynecology';
      case 'NEUROLOGY':
        return 'Neurology';
      case 'ONCOLOGY':
        return 'Oncology';
      case 'OPHTHALMOLOGY':
        return 'Ophthalmology';
      case 'ORTHOPEDICS':
        return 'Orthopedics';
      case 'PEDIATRICS':
        return 'Pediatrics';
      case 'PSYCHIATRY':
        return 'Psychiatry';
      case 'RADIOLOGY':
        return 'Radiology';
      case 'UROLOGY':
        return 'Urology';
      default:
        return 'General Medicine';
    }
  }

  static bool isAppointmentConflict(DateTime appointment1, DateTime appointment2, int duration1, int duration2) {
    final end1 = appointment1.add(Duration(minutes: duration1));
    final end2 = appointment2.add(Duration(minutes: duration2));
    
    return appointment1.isBefore(end2) && appointment2.isBefore(end1);
  }

  static bool isWithinBookingWindow(DateTime appointmentTime) {
    final now = DateTime.now();
    final minAdvance = now.add(Duration(hours: AppValues.minAdvanceBookingHours));
    final maxAdvance = now.add(Duration(days: AppValues.maxAdvanceBookingDays));
    
    return appointmentTime.isAfter(minAdvance) && appointmentTime.isBefore(maxAdvance);
  }

  static String formatAppointmentDuration(int minutes) {
    if (minutes < 60) {
      return '$minutes minutes';
    } else if (minutes == 60) {
      return '1 hour';
    } else {
      final hours = minutes ~/ 60;
      final remainingMinutes = minutes % 60;
      if (remainingMinutes == 0) {
        return '$hours hours';
      } else {
        return '$hours hours $remainingMinutes minutes';
      }
    }
  }

  // Validation Utilities
  static bool isValidEmail(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }

  static bool isValidPhone(String phone) {
    return RegExp(r'^\+?[\d\s-\(\)]{10,}$').hasMatch(phone);
  }

  static bool isValidName(String name) {
    return name.length >= AppValues.minNameLength && 
           name.length <= AppValues.maxNameLength &&
           RegExp(r'^[a-zA-Z\s]+$').hasMatch(name);
  }



  // UI Utilities
  static void showSnackBar(BuildContext context, String message, {Color? backgroundColor}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: backgroundColor ?? AppColors.primary,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
        ),
      ),
    );
  }

  static void showErrorSnackBar(BuildContext context, String message) {
    showSnackBar(context, message, backgroundColor: AppColors.error);
  }

  static void showSuccessSnackBar(BuildContext context, String message) {
    showSnackBar(context, message, backgroundColor: AppColors.success);
  }

  static void showWarningSnackBar(BuildContext context, String message) {
    showSnackBar(context, message, backgroundColor: AppColors.warning);
  }

  static Future<bool> showConfirmationDialog(
    BuildContext context, {
    required String title,
    required String content,
    String confirmText = 'Confirm',
    String cancelText = 'Cancel',
  }) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(cancelText),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text(confirmText),
          ),
        ],
      ),
    );
    return result ?? false;
  }

  // Number Formatting
  static String formatNumber(num number, {int decimalPlaces = 1}) {
    if (number == number.toInt()) {
      return number.toInt().toString();
    }
    return number.toStringAsFixed(decimalPlaces);
  }

  static String formatPercentage(double value, {int decimalPlaces = 1}) {
    return '${formatNumber(value * 100, decimalPlaces: decimalPlaces)}%';
  }

  static String formatCurrency(double amount, {String symbol = '\$'}) {
    return '$symbol${formatNumber(amount, decimalPlaces: 2)}';
  }

  // String Utilities
  static String capitalize(String text) {
    if (text.isEmpty) return text;
    return text[0].toUpperCase() + text.substring(1).toLowerCase();
  }

  static String capitalizeWords(String text) {
    if (text.isEmpty) return text;
    return text.split(' ').map((word) => capitalize(word)).join(' ');
  }

  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) return text;
    return '${text.substring(0, maxLength)}...';
  }

  // Color Utilities
  static Color darkenColor(Color color, double factor) {
    assert(factor >= 0 && factor <= 1);
    return Color.fromARGB(
      color.alpha,
      (color.red * (1 - factor)).round(),
      (color.green * (1 - factor)).round(),
      (color.blue * (1 - factor)).round(),
    );
  }

  static Color lightenColor(Color color, double factor) {
    assert(factor >= 0 && factor <= 1);
    return Color.fromARGB(
      color.alpha,
      (color.red + (255 - color.red) * factor).round(),
      (color.green + (255 - color.green) * factor).round(),
      (color.blue + (255 - color.blue) * factor).round(),
    );
  }

  static bool isColorDark(Color color) {
    final luminance = color.computeLuminance();
    return luminance < 0.5;
  }

  static Color getContrastColor(Color backgroundColor) {
    return isColorDark(backgroundColor) ? Colors.white : Colors.black;
  }
} 