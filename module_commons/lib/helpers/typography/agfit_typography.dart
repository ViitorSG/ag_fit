import 'package:flutter/material.dart';
import 'package:module_commons/commons.dart';
import 'package:module_commons/helpers/typography/agfit_font_family.dart';
import 'package:module_commons/helpers/typography/agfit_typography_font_size.dart';
import 'package:module_commons/helpers/typography/agfit_typography_font_weight.dart';
import 'package:module_commons/helpers/typography/agfit_typography_line_height.dart';

extension TypographyExtension on Text {
  Text bodySmallMedium({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.small,
        fontWeight: TypographyFontWeight.medium,
        height: TypographyLineHeight.label,
        mergeStyle: style);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyExtraSmallSemiBold({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.extraSmall,
        fontWeight: TypographyFontWeight.semiBold,
        height: TypographyLineHeight.label,
        mergeStyle: style);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyTinySemiBold({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.tiny,
        fontWeight: TypographyFontWeight.semiBold,
        height: TypographyLineHeight.label,
        mergeStyle: style);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyTinyRegular({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.tiny,
        fontWeight: TypographyFontWeight.regular,
        height: TypographyLineHeight.label,
        mergeStyle: style);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyExtraSmallMedium({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.extraSmall,
        fontWeight: TypographyFontWeight.medium,
        height: TypographyLineHeight.label,
        mergeStyle: style);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyExtraSmallRegular({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.extraSmall,
        fontWeight: TypographyFontWeight.regular,
        height: TypographyLineHeight.label,
        mergeStyle: style);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyExtraLargeMedium({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.extraLarge,
        fontWeight: TypographyFontWeight.medium,
        height: TypographyLineHeight.label,
        mergeStyle: style);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyBaseLargeMedium({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.baseLarge,
        fontWeight: TypographyFontWeight.medium,
        height: TypographyLineHeight.label,
        mergeStyle: style);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyBaseLargeSemiBold({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.baseLarge,
        fontWeight: TypographyFontWeight.semiBold,
        height: TypographyLineHeight.label,
        mergeStyle: style);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyLargeSemiBold({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.large,
        fontWeight: TypographyFontWeight.semiBold,
        height: TypographyLineHeight.label,
        mergeStyle: style);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyExtraLargeTwoMedium({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.extraLargeTwo,
        fontWeight: TypographyFontWeight.medium,
        height: TypographyLineHeight.label,
        mergeStyle: style);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text titleExtraLargeThreeBold({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.extraLargeThree,
        fontWeight: TypographyFontWeight.bold,
        height: TypographyLineHeight.label,
        mergeStyle: style);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text titleExtraLargeThreeMedium({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.extraLargeThree,
        fontWeight: TypographyFontWeight.medium,
        height: TypographyLineHeight.label,
        mergeStyle: style);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyBaseSemiBold({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.base,
        fontWeight: TypographyFontWeight.semiBold,
        height: TypographyLineHeight.label,
        mergeStyle: style);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyBaseRegular({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.base,
        fontWeight: TypographyFontWeight.regular,
        height: TypographyLineHeight.label,
        mergeStyle: style);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyBaseMedium({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.base,
        fontWeight: TypographyFontWeight.medium,
        height: TypographyLineHeight.label,
        mergeStyle: style);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodySmallRegular({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.small,
        fontWeight: TypographyFontWeight.regular,
        height: TypographyLineHeight.label,
        mergeStyle: style);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyLargeMedium({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.large,
        fontWeight: TypographyFontWeight.medium,
        height: TypographyLineHeight.label,
        mergeStyle: style);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyLargeRegular({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.large,
        fontWeight: TypographyFontWeight.regular,
        height: TypographyLineHeight.label,
        mergeStyle: style);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyBaseBold({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.base,
        fontWeight: TypographyFontWeight.bold,
        height: TypographyLineHeight.label,
        mergeStyle: style);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodySmallSemiBold({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.small,
        fontWeight: TypographyFontWeight.semiBold,
        height: TypographyLineHeight.label,
        mergeStyle: style);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodySmallBold({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.small,
        fontWeight: TypographyFontWeight.bold,
        height: TypographyLineHeight.label,
        mergeStyle: style);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyMediumSemiBold({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.medium,
        fontWeight: TypographyFontWeight.semiBold,
        height: TypographyLineHeight.body,
        mergeStyle: style);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyMediumBold({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.medium,
        fontWeight: TypographyFontWeight.bold,
        height: TypographyLineHeight.body,
        mergeStyle: style);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyMediumMedium({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.medium,
        fontWeight: TypographyFontWeight.medium,
        height: TypographyLineHeight.body,
        mergeStyle: style);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyMediumRegular({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.medium,
        fontWeight: TypographyFontWeight.regular,
        height: TypographyLineHeight.body,
        mergeStyle: style);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text titleExtraLargeBold({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.extraLarge,
        fontWeight: TypographyFontWeight.bold,
        height: TypographyLineHeight.label,
        mergeStyle: style);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text titleLargeBold({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.large,
        fontWeight: TypographyFontWeight.bold,
        height: TypographyLineHeight.label,
        mergeStyle: style);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text titleBaseMedium({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.base,
        fontWeight: TypographyFontWeight.medium,
        height: TypographyLineHeight.label,
        mergeStyle: style);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text _getTextTypography({required Text text, required TextStyle textStyle}) {
    return Text(text.data!,
        style: textStyle,
        key: text.key,
        strutStyle: text.strutStyle,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: text.softWrap,
        overflow: text.overflow,
        textScaleFactor: text.textScaleFactor,
        maxLines: text.maxLines,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior);
  }

  TextStyle _getTextStyle({
    required double fontSize,
    required FontWeight fontWeight,
    required double height,
    double? letterSpacing,
    required TextStyle? mergeStyle,
  }) {
    return TextStyle(
            fontSize: fontSize,
            fontStyle: FontStyle.normal,
            height: height,
            color: AgFitColors.monoBlack,
            fontFamily: AgFitFontFamily.inter.name,
            letterSpacing: letterSpacing,
            fontWeight: fontWeight)
        .merge(mergeStyle);
  }

  // Helper functions
  TextSpan toTextSpan({List<TextSpan>? children}) {
    return TextSpan(text: data, style: style, children: children ??= []);
  }

  SelectableText toSelectableText() => SelectableText(data!, style: style);
}
