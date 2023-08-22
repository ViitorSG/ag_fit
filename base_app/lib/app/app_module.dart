import 'package:flutter_modular/flutter_modular.dart';
import 'package:module_auth/module/auth_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: AuthModule()),
  ];
}
