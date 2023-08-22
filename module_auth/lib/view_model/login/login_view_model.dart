import 'package:flutter/material.dart';

class LoginViewModel {
  bool disabledButton = true;

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  FocusNode passwordFocus = FocusNode();

  FocusNode emailFocus = FocusNode();

  bool errorEmail = false;

  LoginViewModel copyWith({bool? disabledButton, bool? errorEmail}) {
    return LoginViewModel()
      ..emailController = emailController
      ..passwordController = passwordController
      ..passwordFocus = passwordFocus
      ..emailFocus = emailFocus
      ..errorEmail = errorEmail ?? this.errorEmail
      ..disabledButton = disabledButton ?? this.disabledButton;
  }
}