import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:module_commons/commons.dart';

class WideTextButtonWidget extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final TextStyle? textStyle;
  final bool disabled;
  final EdgeInsets padding;
  final AlignmentGeometry alignment;

  const WideTextButtonWidget({
    super.key,
    this.onPressed,
    required this.text,
    this.textStyle,
    this.disabled = false,
    this.padding = EdgeInsets.zero,
    this.alignment = Alignment.center,
  });

  void _onPressed() {
    if (!disabled) {
      HapticFeedback.lightImpact();
      onPressed?.call();
    }
  }

  TextStyle? get _textStyle => const Text("").bodyMediumRegular().style;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: alignment,
        child: GestureDetector(
            onTap: _onPressed, child: Padding(padding: padding, child: Text(text, style: textStyle ?? _textStyle))));
  }
}
