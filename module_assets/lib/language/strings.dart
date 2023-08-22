import 'string_pt_br.dart';

abstract class Localization {
  static Strings strings = _getType();

  static T _getType<T extends Strings>() {
    return StringsPtBR() as T;
  }
}

abstract class Strings {
  //Defaults
  String get ok;

  String get relevantToYou;

  String get topTen;

  String get themes;

  String get continueWatching;

  String get genericError;

  String get genericErrorClient;

  String get genericErrorServer;

  String get certificateSuccess;

  String get certificateFail;
}
