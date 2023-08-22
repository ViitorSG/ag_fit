import 'package:module_external_dependencies/mobx_triple.dart';
import 'package:module_auth/view_model/login/login_view_model.dart';

class LoginStore extends Store<LoginViewModel> {
  LoginStore() : super(LoginViewModel());
}