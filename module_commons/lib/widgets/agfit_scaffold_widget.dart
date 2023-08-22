import 'package:flutter/material.dart';
import 'package:module_commons/commons.dart';
import 'package:module_core/error/agfit_error.dart';
import 'package:module_external_dependencies/mobx_triple.dart';

class AgFitScaffoldWidget<TStore extends BaseStore<TState>, TState extends Object> extends StatelessWidget {
  final TStore store;
  final PreferredSizeWidget? appBar;
  final Widget body;
  final Widget? bottomNavigationBar;
  final Widget? bottomSheet;
  final bool extendBodyBehindAppBar;
  final bool extendBody;
  final Color backgroundColor;
  final double? progressIndicatorValue;

  const AgFitScaffoldWidget({
    super.key,
    required this.body,
    required this.store,
    this.progressIndicatorValue,
    this.backgroundColor = AgFitColors.monoWhite,
    this.extendBody = false,
    this.extendBodyBehindAppBar = false,
    this.appBar,
    this.bottomNavigationBar,
    this.bottomSheet,
  });

  void _onError(BuildContext context, AgFitError error) {
    AgFitAppUI.showSnackBar(
      context: context,
      message: error.message,
      snackBarType: error.snackBarType,
      animateFrom: AnimateFrom.fromTop,
    );
  }

  void _listener(BuildContext context, Triple<TState> triple) {
    switch (triple.event) {
      case TripleEvent.error:
        _onError(context, triple.error);
        break;

      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TripleConsumer<TStore, Exception, TState>(
        store: store,
        listener: _listener,
        builder: (_, triple) => AgFitLoadingPageWidget(
            isLoading: triple.isLoading,
            value: progressIndicatorValue,
            child: Scaffold(
                backgroundColor: backgroundColor,
                extendBody: extendBody,
                extendBodyBehindAppBar: extendBodyBehindAppBar,
                appBar: appBar,
                body: body,
                bottomNavigationBar: bottomNavigationBar,
                bottomSheet: bottomSheet)));
  }
}
