import 'package:module_auth/i18n/translate.dart';

class AuthPtBR implements AuthStrings {
  @override
  String get search => "Pesquisar";

  @override
  String get email => "E-mail";

  @override
  String get password => "Senha";

  @override
  String get forgotPassword => "Esqueceu a senha?";

  @override
  String get enter => "ENTRAR";

  @override
  String get recoverPassword => "Recuperar senha";

  @override
  String get tokenWasSent => "Você receberá um e-mail com o token de recuperação.";

  @override
  String get send => "ENVIAR";

  @override
  String get recoveryToken => "Token de recuperação";

  @override
  String tokenSent(String email) => "Token enviado para $email";

  @override
  String get confirmation => "Confirmação";

  @override
  String get lowerCase => "Letra minúscula [a-z]";

  @override
  String get upperCase => "Letra maiúscula [A-Z]";

  @override
  String get number => "Número [0-9]";

  @override
  String get special => "Caractere especial [@!_?&...]";

  @override
  String get minimumCharacters => "Mínimo de 8 caracteres";

  @override
  String get samePassword => "Senhas iguais";

  @override
  String get token => "Token";

  @override
  String get resetPassword => "Redefinir senha";

  @override
  String get newName => "Novo nome";

  @override
  String get name => "Nome";

  @override
  String get currentPassword => "Senha atual";

  @override
  String get newPassword => "Nova senha";

  @override
  String get changeName => "Redefinir nome";

  @override
  String get confirm => "Confirmar";

  @override
  String get containANumber => "A senha deve conter ao menos um número";

  @override
  String get containCapitalLetter => "A senha deve conter ao menos uma letra maiúscula";

  @override
  String get containEightCharacters => "A senha deve conter ao menos 8 caracteres";

  @override
  String get containLowercaseLetter => "A senha deve conter ao menos uma letra minúscula";

  @override
  String get containSpecialCharacter => "A senha deve conter ao menos um caracter especial (!@#\$%&*)";
}
