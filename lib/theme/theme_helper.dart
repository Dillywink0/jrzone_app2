import 'package:flutter/material.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.whiteA700,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: colorScheme.primaryContainer.withOpacity(0.2),
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: colorScheme.secondaryContainer,
          fontSize: 16,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: 15,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: appTheme.indigoA400,
          fontSize: 30,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: TextStyle(
          color: appTheme.indigoA400,
          fontSize: 27,
          fontFamily: 'Radio Canada',
          fontWeight: FontWeight.w400,
        ),
        labelLarge: TextStyle(
          color: colorScheme.primary,
          fontSize: 13,
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: appTheme.indigoA400,
          fontSize: 16,
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 15,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF848EE8),
    primaryContainer: Color(0XFF292826),
    secondaryContainer: Color(0XCC848EE8),

    // On colors(text colors)
    onPrimary: Color(0XFF272727),
    onPrimaryContainer: Color(0XFF4CFCD2),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF000000);

  // Blue
  Color get blue800 => Color(0XFF0A66C2);
  Color get blueA400 => Color(0XFF1877F2);
  Color get blueA40001 => Color(0XFF2984FF);
  Color get blueA40066 => Color(0X661781FF);

  // DeepPurpleAf
  Color get deepPurpleA2007f => Color(0X7F613EEA);

  // Indigo
  Color get indigoA400 => Color(0XFF4253F1);
  Color get indigoA700 => Color(0XFF0B4AF5);
  Color get indigoA70001 => Color(0XFF2D42FF);
  Color get indigoA70002 => Color(0XFF2C41FF);
  Color get indigoA70003 => Color(0XFF0720FF);

  // White
  Color get whiteA700 => Color(0XFFFFFFFF);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
