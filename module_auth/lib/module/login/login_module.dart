import 'package:module_auth/pages/login/login_page.dart';
import 'package:module_auth/stores/login/login_store.dart';
import 'package:module_commons/commons.dart';
import 'package:module_external_dependencies/flutter_modular.dart';

abstract class LoginPageModule {
  static List<Bind> binds = [
    Bind.factory((i) => LoginStore()),
  ];
  static List<ModularRoute> routes = [
    ChildRoute(AgFitRoutes.login, maintainState: false, child: (context, args) => const LoginPage())
  ];
}