import 'package:flutter/material.dart';
import 'package:module_auth/stores/login/login_store.dart';
import 'package:module_auth/view_model/login/login_view_model.dart';
import 'package:module_commons/commons.dart';
import 'package:module_external_dependencies/flutter_modular.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LoginStore _store = Modular.get<LoginStore>();

  @override
  Widget build(BuildContext context) {
    return AgFitScaffoldWidget<LoginStore, LoginViewModel>(
        store: _store, body: const Center(child: Text('Login Page teste')));
  }
}
