import 'package:flutter/material.dart';
import '../../core/utils/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration();
  static BoxDecoration get outlineIndigoA => BoxDecoration(
        color: appTheme.deepPurpleA2007f,
        border: Border.all(
          color: appTheme.indigoA700,
          width: 1,
        ),
      );
  static BoxDecoration get outlineIndigoA700 => BoxDecoration(
        color: appTheme.blueA40066,
        border: Border.all(
          color: appTheme.indigoA700,
          width: 1,
        ),
      );
}

class BorderRadiusStyle {
  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10,
      );
  static BorderRadius get roundedBorder14 => BorderRadius.circular(
        14,
      );
  static BorderRadius get roundedBorder33 => BorderRadius.circular(
        33,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
