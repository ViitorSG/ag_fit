import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:module_commons/commons.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AgFitAppUI.setPortraitOrientation();
    Modular.setInitialRoute(AgFitRoutes.login);

    return MaterialApp.router(
        routeInformationParser: Modular.routeInformationParser,
        routerDelegate: Modular.routerDelegate,
        themeMode: ThemeMode.dark,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: AgFitColors.monoBlack,
            indicatorColor: AgFitColors.monoBlack,
            progressIndicatorTheme:
                const ProgressIndicatorThemeData(color: AgFitColors.monoBlack, linearTrackColor: AgFitColors.monoBlack),
            bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor: Colors.transparent, elevation: 0),
            bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.transparent),
            highlightColor: Colors.transparent,
            splashFactory: NoSplash.splashFactory,
            brightness: Brightness.dark),
        darkTheme: ThemeData(highlightColor: Colors.transparent, splashFactory: NoSplash.splashFactory));
  }
}
