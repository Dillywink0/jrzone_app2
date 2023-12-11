import 'package:flutter/material.dart';
import '../../core/utils/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumIndigoA70001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.indigoA70001,
      );
  static get bodyMediumRadioCanada => theme.textTheme.bodyMedium!.radioCanada;
  static get bodyMediumRadioCanadaIndigoA70003 =>
      theme.textTheme.bodyMedium!.radioCanada.copyWith(
        color: appTheme.indigoA70003,
      );
  static get bodyMediumRadioCanada_1 => theme.textTheme.bodyMedium!.radioCanada;
  static get bodyMediumSecondaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  // Headline text style
  static get headlineLargeOnPrimaryContainer =>
      theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  // Title text style
  static get titleSmallIndigoA70001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.indigoA70001,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get quicksand {
    return copyWith(
      fontFamily: 'Quicksand',
    );
  }

  TextStyle get radioCanada {
    return copyWith(
      fontFamily: 'Radio Canada',
    );
  }
}
