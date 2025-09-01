// Custom scroll physics for snapping to individual dates
// This class makes dates "snap" to center like a magnet when user stops scrolling
import 'package:flutter/material.dart';

class DateSnapScrollPhysics extends ScrollPhysics {
  // itemWidth = width of one date (e.g., 45.w)
  final double itemWidth;
  // spacing = space between dates (e.g., 6.w)
  final double spacing;
  // padding = left/right margins of ListView (e.g., 30.w)
  final double padding;

  // Constructor - takes the basic scroll behavior (parent) and our custom parameters
  const DateSnapScrollPhysics({
    super.parent,  // ← This keeps all the old scroll behavior (bounce, etc.)
    required this.itemWidth,  // ← Must provide date width
    required this.spacing,    // ← Must provide spacing between dates
    this.padding = 0.0,      // ← Optional padding, defaults to 0
  });

  // This method is called by Flutter to create a new physics instance
  // ancestor = the previous physics that was used before our custom physics
  @override
  DateSnapScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return DateSnapScrollPhysics(
      // buildParent(ancestor) = combines all previous physics rules together
      // This ensures we keep bounce effects, edge behaviors, etc.
      parent: buildParent(ancestor),
      itemWidth: itemWidth,    // ← Pass our date width
      spacing: spacing,        // ← Pass our spacing
      padding: padding,        // ← Pass our padding
    );
  }

  // Minimum speed needed to trigger a "fling" gesture (50 pixels per second)
  @override
  double get minFlingVelocity => 50.0;

  // Maximum speed allowed for fling gestures (800 pixels per second)
  @override
  double get maxFlingVelocity => 800.0;

  // This is the MAGIC method - it creates the snap behavior!
  // Called when user stops scrolling to determine where to snap to
  @override
  Simulation? createBallisticSimulation(ScrollMetrics position, double velocity) {
    // First, try to get simulation from parent physics (e.g., bounce at edges)
    final simulation = super.createBallisticSimulation(position, velocity);
    if (simulation != null) return simulation;  // ← If parent handles it, use that

    // Calculate the total width of one date item (date + space between dates)
    // Example: date width 45 + spacing 6 = 51 pixels per date
    final itemExtent = itemWidth + spacing;

    // Remove padding to get the "real" position within the date list
    // Example: if ListView has 30.w padding, subtract 30 from current position
    final adjustedPosition = position.pixels - padding;

    // Find which date number we're closest to (0, 1, 2, 3, etc.)
    // Example: position 25 ÷ 51 = 0.49 → round to 0 (first date)
    final targetIndex = (adjustedPosition / itemExtent).round();

    // Calculate the exact pixel position where that date should be
    // Example: date 0 × 51 = 0 pixels, date 1 × 51 = 51 pixels
    final targetOffset = (targetIndex * itemExtent) + padding;

    // Only create animation if we need to move to a different position
    if (targetOffset != position.pixels && targetIndex >= 0 && targetIndex < 30) {
      // Create a smooth spring animation to the target date position
      return ScrollSpringSimulation(
        spring,                    // ← Built-in spring physics for natural motion
        position.pixels,           // ← Start from current position
        targetOffset,              // ← End at target date position
        velocity * 0.5,            // ← Reduce velocity for more stable movement
        tolerance: tolerance,      // ← How close to target before stopping
      );
    }
    return null;  // ← No animation needed if already at target
  }
}