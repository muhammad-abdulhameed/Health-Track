# 🏥 Medical App Assets & Styles Guide

This guide explains how to use the comprehensive asset system, icons, and styles created for your medical booking app based on the Figma design.

## 📁 Asset Structure

```
assets/
├── icons/          # SVG icons for medical specialties and UI elements
├── images/         # App images, logos, and illustrations
└── fonts/          # Custom fonts (if any)
```

## 🎨 Color Scheme

The app uses a professional medical color palette based on your Figma design:

### Primary Colors (Teal/Cyan)
- **Primary**: `#00BCD4` - Main teal color
- **Primary Light**: `#4DD0E1` - Light teal
- **Primary Dark**: `#0097A7` - Dark teal
- **Primary Accent**: `#26C6DA` - Accent teal

### Secondary Colors
- **Secondary**: `#03DAC6` - Cyan
- **Secondary Light**: `#66FFF8` - Light cyan
- **Secondary Dark**: `#018786` - Dark cyan

### Background Colors
- **Background**: `#121212` - Dark background (Figma theme)
- **Surface**: `#1E1E1E` - Dark surface
- **Card**: `#FFFFFF` - White cards
- **Card Dark**: `#2A2A2A` - Dark card variant

## 🔤 Typography

The app includes a comprehensive typography system:

### Headlines
- **Headline 1**: 32px, Bold
- **Headline 2**: 28px, Semi-Bold
- **Headline 3**: 24px, Semi-Bold
- **Headline 4**: 20px, Semi-Bold
- **Headline 5**: 18px, Semi-Bold
- **Headline 6**: 16px, Semi-Bold

### Body Text
- **Body 1**: 16px, Regular
- **Body 2**: 14px, Regular
- **Caption**: 12px, Regular
- **Overline**: 10px, Regular, Uppercase

### Interactive Elements
- **Button**: 14px, Semi-Bold, Uppercase
- **Subtitle**: 16px/14px, Medium

## 🎯 Icon System

### Icon Categories

#### Medical Icons
- `stethoscope` - General medicine
- `heartbeat` - Cardiology
- `eye` - Ophthalmology
- `brain` - Neurology
- `bone` - Orthopedics
- `tooth` - Dentistry
- `syringe` - Vaccinations
- `medical_bag` - Medical supplies

#### Navigation Icons
- `home` - Home screen
- `profile` - User profile
- `calendar` - Appointments
- `document` - Medical records
- `search` - Search functionality

#### Action Icons
- `add` - Add new items
- `edit` - Edit existing items
- `delete` - Remove items
- `check` - Confirm actions
- `close` - Close/cancel

#### Status Icons
- `heart` - Favorites
- `star` - Ratings
- `location` - Location services
- `clock` - Time-related
- `notification` - Alerts

### Using Icons

#### Basic Icon Usage
```dart
import 'package:health_track/core/core.dart';

// Simple icon
AppIcon(
  iconPath: AppIcons.stethoscope,
  size: 24,
  color: AppColors.primary,
)

// Circular icon with background
AppIcon.circular(
  iconPath: AppIcons.heart,
  size: 32,
  color: Colors.white,
  backgroundColor: AppColors.primary,
)
```

#### Predefined Icon Styles
```dart
// Circular filled icon (like Figma design)
AppIconStyles.circularFilled(
  iconPath: AppIcons.add,
  size: 24,
  onTap: () => print('Icon tapped'),
)

// Medical specialty button
AppIconStyles.squareSpecialty(
  iconPath: AppIcons.stethoscope,
  label: 'General Medicine',
  size: 48,
  onTap: () => selectSpecialty('GENERAL_MEDICINE'),
)

// Notification badge
AppIconStyles.notificationBadge(
  iconPath: AppIcons.notification,
  count: 5,
  onTap: () => openNotifications(),
)
```

## 🎨 Component Styles

### Button Styles
```dart
// Primary button (teal background)
ElevatedButton(
  style: AppStyles.primaryButtonStyle,
  onPressed: () {},
  child: Text('Book Appointment'),
)

// Secondary button (outlined)
ElevatedButton(
  style: AppStyles.secondaryButtonStyle,
  onPressed: () {},
  child: Text('Cancel'),
)

// Text button
TextButton(
  style: AppStyles.textButtonStyle,
  onPressed: () {},
  child: Text('Learn More'),
)
```

### Input Field Styles
```dart
// Standard input field
TextField(
  decoration: AppStyles.inputDecoration.copyWith(
    hintText: 'Enter your name',
  ),
)

// Search input field
TextField(
  decoration: AppStyles.searchInputDecoration,
)
```

### Card Styles
```dart
// Standard card
Container(
  decoration: AppStyles.cardDecoration,
  child: Card(
    child: ListTile(
      title: Text('Appointment Details'),
    ),
  ),
)

// Gradient card
Container(
  decoration: AppStyles.gradientCardDecoration,
  child: Card(
    child: ListTile(
      title: Text('Welcome!'),
    ),
  ),
)
```

## 🎭 Theme Usage

### Light Theme
```dart
MaterialApp(
  theme: AppTheme.lightTheme,
  home: MyHomePage(),
)
```

### Dark Theme
```dart
MaterialApp(
  theme: AppTheme.darkTheme,
  home: MyHomePage(),
)
```

### Custom Theme with Medical Colors
```dart
MaterialApp(
  theme: ThemeData(
    colorScheme: AppTheme.medicalColorScheme,
    // ... other theme properties
  ),
  home: MyHomePage(),
)
```

## 📱 Responsive Design

The app includes responsive breakpoints:
- **Mobile**: < 600px
- **Tablet**: 600px - 900px
- **Desktop**: > 900px

### Using Responsive Dimensions
```dart
// Responsive padding
Container(
  padding: EdgeInsets.all(
    MediaQuery.of(context).size.width < AppDimensions.mobileBreakpoint
        ? AppDimensions.paddingMedium
        : AppDimensions.paddingLarge,
  ),
)
```

## 🔧 Customization

### Adding New Icons
1. Create SVG file in `assets/icons/`
2. Add icon path to `AppIcons` class
3. Use in your widgets

### Custom Color Schemes
```dart
// Create custom color scheme
final customColors = AppColors.copyWith(
  primary: Color(0xFFYOUR_COLOR),
  secondary: Color(0xFFYOUR_COLOR),
)
```

### Custom Typography
```dart
// Extend existing styles
final customHeadline = AppStyles.headline1.copyWith(
  fontSize: 36,
  fontWeight: FontWeight.w900,
)
```

## 📦 Dependencies

The app includes these packages:
- `flutter_svg` - SVG icon support
- `provider` - State management
- `shared_preferences` - Local storage
- `http` - API requests
- `intl` - Date/time formatting

## 🚀 Getting Started

1. **Install dependencies**:
   ```bash
   flutter pub get
   ```

2. **Import core package**:
   ```dart
   import 'package:health_track/core/core.dart';
   ```

3. **Use in your widgets**:
   ```dart
   class MyWidget extends StatelessWidget {
     @override
     Widget build(BuildContext context) {
       return Container(
         decoration: AppStyles.cardDecoration,
         child: Column(
           children: [
             AppIcon(
               iconPath: AppIcons.stethoscope,
               size: 48,
               color: AppColors.primary,
             ),
             Text(
               'Medical App',
               style: AppStyles.headline3,
             ),
           ],
         ),
       );
     }
   }
   ```

## 🎨 Figma Design Integration

This asset system is designed to perfectly match your Figma design:
- **Colors**: Exact teal/cyan palette
- **Typography**: Professional medical font hierarchy
- **Icons**: Comprehensive medical icon set
- **Components**: UI elements matching Figma specs
- **Layout**: Responsive design patterns

## 📝 Notes

- All icons use `currentColor` for easy theming
- SVG icons are optimized for Flutter
- Styles follow Material Design 3 principles
- Dark theme matches your Figma design
- All dimensions are consistent and scalable

For questions or customizations, refer to the core files in `lib/core/`. 