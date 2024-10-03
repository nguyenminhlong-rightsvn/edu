import 'package:flutter/material.dart';

class AppSpacing {
  // Padding constants
  static const EdgeInsets paddingSmall = EdgeInsets.all(8.0);
  static const EdgeInsets paddingMedium = EdgeInsets.all(16.0);
  static const EdgeInsets paddingLarge = EdgeInsets.all(24.0);

  // Horizontal padding
  static const EdgeInsets horizontalPaddingSmall = EdgeInsets.symmetric(
    horizontal: 8.0,
  );
  static const EdgeInsets horizontalPaddingMedium = EdgeInsets.symmetric(
    horizontal: 16.0,
  );
  static const EdgeInsets horizontalPaddingLarge = EdgeInsets.symmetric(
    horizontal: 24.0,
  );

  // Vertical padding
  static const EdgeInsets verticalPaddingSmall = EdgeInsets.symmetric(
    vertical: 8.0,
  );
  static const EdgeInsets verticalPaddingMedium = EdgeInsets.symmetric(
    vertical: 16.0,
  );
  static const EdgeInsets verticalPaddingLarge = EdgeInsets.symmetric(
    vertical: 24.0,
  );

  // Specific spacing values (could be used for spacing between widgets)
  static const double smallSpacing = 8.0;
  static const double mediumSpacing = 16.0;
  static const double largeSpacing = 24.0;

  // Spacing between list items or cards
  static const double listItemSpacing = 12.0;
}
