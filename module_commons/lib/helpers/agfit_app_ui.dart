import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:module_commons/commons.dart';

class AgFitAppUI {
  static final AgFitAppUI _instance = AgFitAppUI._internal();

  factory AgFitAppUI() {
    return _instance;
  }

  AgFitAppUI._internal();

  static ScrollPhysics get bouncingPhysics => const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics());

  static bool isApplicationStartup = false;

  static void setPortraitOrientation() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  }

  static void showSnackBar({
    required BuildContext context,
    required String message,
    required SnackBarType snackBarType,
    required AnimateFrom animateFrom,
  }) {
    try {
      OverlayEntry? snackBar;
      snackBar = OverlayEntry(
          builder: (_) => WideSnackBarWidget(
              snackBar: snackBar, message: message, animateFrom: animateFrom, snackBarType: snackBarType));
      Overlay.of(context).insert(snackBar);
    } catch (e) {
      debugPrint('Error showing snackbar: $e');
    }
  }

  static Future wideShowModalBottomSheet({required BuildContext context, required Widget child}) {
    return showModalBottomSheet(
        context: context,
        elevation: 0,
        barrierColor: Colors.transparent,
        backgroundColor: AgFitColors.monoWhite,
        builder: (BuildContext context) {
          return Container(
              decoration:
                  const BoxDecoration(border: Border(top: BorderSide(color: AgFitColors.neutralGrayTree, width: 1))),
              child: child);
        });
  }

}
