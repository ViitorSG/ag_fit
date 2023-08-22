import 'package:flutter/material.dart';
import 'package:module_assets/assets.dart';
import 'package:module_commons/commons.dart';
import 'package:module_external_dependencies/flutter_svg.dart';
import 'agfit_snack_bar_type.dart';

enum AnimateFrom { fromTop, fromBottom }

class WideSnackBarWidget extends StatefulWidget {
  final AnimateFrom animateFrom;
  final SnackBarType snackBarType;
  final String message;
  final OverlayEntry? snackBar;

  const WideSnackBarWidget({
    super.key,
    required this.animateFrom,
    required this.snackBarType,
    required this.message,
    required this.snackBar,
  });

  @override
  State<WideSnackBarWidget> createState() => _WideSnackBarWidgetState();
}

class _WideSnackBarWidgetState extends State<WideSnackBarWidget> {
  double? top = -150;
  double? bottom = -150;

  void _setBottom(double value) => setState(() => bottom = value);

  void _setTop(double value) => setState(() => top = value);

  void _setTopBottom(double value) {
    switch (widget.animateFrom) {
      case AnimateFrom.fromBottom:
        _setBottom(value);
        break;
      case AnimateFrom.fromTop:
        _setTop(value);
        break;
    }
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), widget.snackBar?.remove);
    if (mounted) _setTopBottom(AgFitDimens.xxxmacro);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
        bottom: widget.animateFrom == AnimateFrom.fromBottom ? bottom : null,
        top: widget.animateFrom == AnimateFrom.fromTop ? top : null,
        curve: Curves.ease,
        onEnd: () => Future.delayed(const Duration(seconds: 2), () => _setTopBottom(-150)),
        duration: const Duration(seconds: 1),
        child: SafeArea(
            bottom: false,
            child: Dismissible(
                key: UniqueKey(),
                onDismissed: (_) => widget.snackBar?.remove(),
                direction: DismissDirection.horizontal,
                child: Material(
                    color: Colors.transparent,
                    child: Align(
                        alignment: Alignment.center,
                        child: Container(
                            width: MediaQuery.of(context).size.width - AgFitDimens.xlhmacro,
                            alignment: Alignment.center,
                            height: AgFitDimens.smxss,
                            margin: const EdgeInsets.symmetric(horizontal: AgFitDimens.xxxmicro),
                            padding: const EdgeInsets.all(AgFitDimens.xmicro),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: AgFitColors.monoBlack.withOpacity(AgFitOpacity.dotOneFifth),
                                      offset: const Offset(AgFitDimens.none, AgFitDimens.atto),
                                      blurRadius: AgFitDimens.atto)
                                ],
                                color: widget.snackBarType.backgroundColor,
                                borderRadius: BorderRadius.circular(AgFitDimens.xmicro)),
                            child: Row(children: [
                              Container(
                                  width: AgFitDimens.xxxmicro,
                                  height: AgFitDimens.xxxmicro,
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.all(AgFitDimens.femto),
                                  decoration: BoxDecoration(
                                      color: widget.snackBarType.iconColor,
                                      borderRadius: BorderRadius.circular(AgFitDimens.xxxlg)),
                                  child: SvgPicture.asset(widget.snackBarType.icon.svg,
                                      package: widget.snackBarType.icon.package)),
                              Padding(
                                  padding: const EdgeInsets.only(left: AgFitDimens.xxxnano),
                                  child: Text(widget.message).bodySmallMedium(style: widget.snackBarType.textColor))
                            ])))))));
  }
}
