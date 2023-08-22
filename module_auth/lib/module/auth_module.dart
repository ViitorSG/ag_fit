import 'package:module_auth/module/login/login_module.dart';
import 'package:module_external_dependencies/flutter_modular.dart';

class AuthModule extends Module {
  @override
  List<Bind> get binds => [
    ...LoginPageModule.binds,
  ];

  @override
  List<ModularRoute> get routes => [
    ...LoginPageModule.routes,
  ];
}
