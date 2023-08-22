import 'package:module_commons/helpers/agfit_regex_pattern_helper.dart';

extension ValidateEmail on String {
  bool get isValidEmail => RegExp(AgFitRegexPatternHelper.email).hasMatch(this);

  bool isValidPassword() {
    bool uppercase = RegExp(r'[A-Z]').hasMatch(this);
    bool digits = RegExp(r'\d').hasMatch(this);
    bool lowercase = RegExp(r'[a-z]').hasMatch(this);
    bool special = RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(this);
    bool minLength = length >= 8;
    bool valid = uppercase && digits && lowercase && special && minLength;
    return valid;
  }
}
