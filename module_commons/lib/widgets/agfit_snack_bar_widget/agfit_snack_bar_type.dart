import 'package:flutter/material.dart';
import 'package:module_assets/assets.dart';
import 'package:module_commons/helpers/agfit_colors.dart';

enum SnackBarType { success, error, warning, changesSaved }

extension SnackBarTypeExtension on SnackBarType {
  WideVectors get icon {
    switch (this) {
      case SnackBarType.success:
        return WideVectors.ic_check;

      case SnackBarType.changesSaved:
        return WideVectors.ic_check;

      case SnackBarType.error:
        return WideVectors.ic_alert;

      case SnackBarType.warning:
        return WideVectors.ic_alert;
    }
  }

  Color get backgroundColor {
    switch (this) {
      case SnackBarType.success:
        return AgFitColors.successFiveHundred;

      case SnackBarType.changesSaved:
        return AgFitColors.blueTwo;

      case SnackBarType.error:
        return AgFitColors.errorFiveHundred;

      case SnackBarType.warning:
        return AgFitColors.yellowTwo;
    }
  }

  Color get iconColor {
    switch (this) {
      case SnackBarType.success:
        return AgFitColors.successFourHundred;

      case SnackBarType.changesSaved:
        return AgFitColors.blueSix;

      case SnackBarType.error:
        return AgFitColors.errorFourHundred;

      case SnackBarType.warning:
        return AgFitColors.yellowSix;
    }
  }

  TextStyle get textColor {
    switch (this) {
      case SnackBarType.success:
        return const TextStyle(color: AgFitColors.monoWhite);

      case SnackBarType.changesSaved:
        return const TextStyle(color: AgFitColors.monoBlack);

      case SnackBarType.error:
        return const TextStyle(color: AgFitColors.monoWhite);

      case SnackBarType.warning:
        return const TextStyle(color: AgFitColors.monoBlack);
    }
  }
}
