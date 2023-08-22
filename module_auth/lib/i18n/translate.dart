import 'strings/pt_br.dart';

abstract class TranslateAuth {
  static AuthStrings strings = _getType();

  static T _getType<T extends AuthStrings>() => AuthPtBR() as T;
}

abstract class AuthStrings {
  String get search;

  String get email;

  String get password;

  String get confirmation;

  String get confirm;

  String get forgotPassword;

  String get enter;

  String get recoverPassword;

  String get tokenWasSent;

  String get send;

  String get recoveryToken;

  String tokenSent(String email);

  String get lowerCase;

  String get upperCase;

  String get number;

  String get special;

  String get minimumCharacters;

  String get samePassword;

  String get token;

  String get resetPassword;

  String get newName;

  String get name;

  String get currentPassword;

  String get newPassword;

  String get changeName;

  String get containSpecialCharacter;

  String get containLowercaseLetter;

  String get containCapitalLetter;

  String get containEightCharacters;

  String get containANumber;
}
