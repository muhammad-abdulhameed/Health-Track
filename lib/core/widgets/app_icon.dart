import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants/constants.dart';
import '../styles/app_styles.dart';

class AppIcon extends StatelessWidget {
  final String iconPath;
  final double? size;
  final Color? color;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;
  final bool isCircular;
  final bool isSquare;
  final double? borderRadius;
  final BoxBorder? border;

  const AppIcon({
    super.key,
    required this.iconPath,
    this.size,
    this.color,
    this.backgroundColor,
    this.padding,
    this.onTap,
    this.isCircular = false,
    this.isSquare = false,
    this.borderRadius,
    this.border,
  });

  const AppIcon.circular({
    super.key,
    required this.iconPath,
    this.size,
    this.color,
    this.backgroundColor,
    this.padding,
    this.onTap,
    this.border,
  })  : isCircular = true,
        isSquare = false,
        borderRadius = null;

  const AppIcon.square({
    super.key,
    required this.iconPath,
    this.size,
    this.color,
    this.backgroundColor,
    this.padding,
    this.onTap,
    this.borderRadius,
    this.border,
  })  : isCircular = false,
        isSquare = true;

  @override
  Widget build(BuildContext context) {
    final iconSize = size ?? AppDimensions.iconSizeXL;
    final iconColor = color ?? Colors.white;
    final bgColor = backgroundColor ?? AppColors.primary;
    final iconPadding = padding ?? EdgeInsets.zero;

    Widget iconWidget = _buildIconWidget(iconSize, iconColor);

    if (onTap != null) {
      iconWidget = GestureDetector(
        onTap: onTap,
        child: iconWidget,
      );
    }

    if (isCircular) {
      return Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: bgColor,
          shape: BoxShape.circle,
          border: border,
        ),
        padding: iconPadding,
        child: Center(child: iconWidget),
      );
    }

    if (isSquare) {
      return Container(
        width: iconSize + (iconPadding.horizontal),
        height: iconSize + (iconPadding.vertical),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(borderRadius ?? AppDimensions.radius8),
          border: border,
        ),
        padding: iconPadding,
        child: Center(child: iconWidget),
      );
    }

    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(borderRadius ?? 0),
        border: border,
      ),
      padding: iconPadding,
      child: iconWidget,
    );
  }

  Widget _buildIconWidget(double size, Color color) {
    if (iconPath.endsWith('.svg')) {
      return SvgPicture.asset(
        iconPath,
        width: AppDimensions.iconSizeMedium,
        height: AppDimensions.iconSizeMedium,
        colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
      );
    } else if (iconPath.startsWith('Icons.')) {
      // Handle Flutter built-in icons
      final iconName = iconPath.replaceFirst('Icons.', '');
      final iconData = _getIconData(iconName);
      if (iconData != null) {
        return Icon(
          iconData,
          size: size,
          color: color,
        );
      }
    }
    
    // Fallback to asset image
    return Image.asset(
      iconPath,
      width: size,
      height: size,
      color: color,
    );
  }

  IconData? _getIconData(String iconName) {
    switch (iconName) {
      case 'home':
        return Icons.home;
      case 'person':
        return Icons.person;
      case 'calendar_today':
        return Icons.calendar_today;
      case 'description':
        return Icons.description;
      case 'search':
        return Icons.search;
      case 'add':
        return Icons.add;
      case 'edit':
        return Icons.edit;
      case 'delete':
        return Icons.delete;
      case 'check':
        return Icons.check;
      case 'close':
        return Icons.close;
      case 'arrow_back':
        return Icons.arrow_back;
      case 'arrow_forward':
        return Icons.arrow_forward;
      case 'arrow_downward':
        return Icons.arrow_downward;
      case 'arrow_upward':
        return Icons.arrow_upward;
      case 'favorite':
        return Icons.favorite;
      case 'star':
        return Icons.star;
      case 'location_on':
        return Icons.location_on;
      case 'access_time':
        return Icons.access_time;
      case 'info':
        return Icons.info;
      case 'help':
        return Icons.help;
      case 'notifications':
        return Icons.notifications;
      case 'chat':
        return Icons.chat;
      case 'phone':
        return Icons.phone;
      case 'email':
        return Icons.email;
      case 'message':
        return Icons.message;
      case 'audiotrack':
        return Icons.audiotrack;
      case 'folder':
        return Icons.folder;
      case 'insert_drive_file':
        return Icons.insert_drive_file;
      case 'get_app':
        return Icons.get_app;
      case 'note_add':
        return Icons.note_add;
      case 'lock':
        return Icons.lock;
      case 'fingerprint':
        return Icons.fingerprint;
      case 'vpn_key':
        return Icons.vpn_key;
      case 'facebook':
        return Icons.facebook;
      case 'settings':
        return Icons.settings;
      case 'tune':
        return Icons.tune;
      case 'camera_alt':
        return Icons.camera_alt;
      case 'credit_card':
        return Icons.credit_card;
      case 'account_balance_wallet':
        return Icons.account_balance_wallet;
      case 'schedule':
        return Icons.schedule;
      case 'event_note':
        return Icons.event_note;
      case 'book_online':
        return Icons.book_online;
      case 'cancel':
        return Icons.cancel;
      case 'rate_review':
        return Icons.rate_review;
      case 'local_pharmacy':
        return Icons.local_pharmacy;
      case 'medication':
        return Icons.medication;
      case 'local_hospital':
        return Icons.local_hospital;
      case 'fitness_center':
        return Icons.fitness_center;
      case 'restaurant':
        return Icons.restaurant;
      case 'filter_list':
        return Icons.filter_list;
      case 'sort':
        return Icons.sort;
      case 'share':
        return Icons.share;
      case 'cloud_download':
        return Icons.cloud_download;
      case 'cloud_upload':
        return Icons.cloud_upload;
      case 'refresh':
        return Icons.refresh;
      case 'sync':
        return Icons.sync;
      default:
        return null;
    }
  }
}

// Predefined icon styles matching Figma design
class AppIconStyles {
  // Circular filled icons (like the 20 small circular buttons in Figma)
  static Widget circularFilled({
    required String iconPath,
    double size = AppDimensions.iconSizeSmall,
    Color? color,
    VoidCallback? onTap,
  }) {
    return AppIcon.circular(
      iconPath: iconPath,
      size: size,
      color: color ?? Colors.white,
      backgroundColor: AppColors.primary,
      padding: const EdgeInsets.all(AppDimensions.paddingSmall),
      onTap: onTap,
    );
  }

  // Square icon buttons with text (like the specialty buttons in Figma)
  static Widget squareSpecialty({
    required String iconPath,
    required String label,
    double size = AppDimensions.iconSizeLarge,
    Color? color,
    VoidCallback? onTap,
    bool isSelected = false,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size + AppDimensions.paddingLarge * 2,
        height: size + AppDimensions.paddingLarge * 2 + 40, // Extra height for text
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(AppDimensions.radius12),
          border: isSelected 
            ? Border.all(color: Colors.white, width: 2)
            : null,
        ),
        padding: const EdgeInsets.all(AppDimensions.paddingMedium),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppIcon(
              iconPath: iconPath,
              size: size,
              color: Colors.white,
            ),
            const SizedBox(height: AppDimensions.paddingSmall),
            Text(
              label,
              style: AppStyles.caption.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  // Notification badge icon (like the bell with red circle in Figma)
  static Widget notificationBadge({
    required String iconPath,
    required int count,
    double size = AppDimensions.iconSizeMedium,
    Color? color,
    VoidCallback? onTap,
  }) {
    return Stack(
      children: [
        AppIcon.circular(
          iconPath: iconPath,
          size: size,
          color: color ?? Colors.white,
          backgroundColor: AppColors.primary,
          onTap: onTap,
        ),
        Positioned(
          right: 0,
          top: 0,
          child: Container(
            padding: const EdgeInsets.all(2),
            decoration: const BoxDecoration(
              color: AppColors.error,
              shape: BoxShape.circle,
            ),
            constraints: const BoxConstraints(
              minWidth: 16,
              minHeight: 16,
            ),
            child: Text(
              count.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }

  // Heart icon with different states (like in Figma)
  static Widget heartIcon({
    required bool isFilled,
    double size = AppDimensions.iconSizeMedium,
    VoidCallback? onTap,
  }) {
    return AppIcon(
      iconPath: isFilled ? AppIcons.heart : AppIcons.heart,
      size: size,
      color: isFilled ? AppColors.primary : Colors.white,
      backgroundColor: isFilled ? Colors.white : AppColors.primary,
      border: Border.all(
        color: isFilled ? AppColors.primary : AppColors.primary,
        width: 2,
      ),
      onTap: onTap,
    );
  }
} 