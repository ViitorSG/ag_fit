import 'package:module_commons/i18n/strings/pt_br.dart';

abstract class TranslateCommons {
  static CommonsStrings strings = _getType();

  static T _getType<T extends CommonsStrings>() => CommonsPtBR() as T;
}

abstract class CommonsStrings {
  String get all;

  String get podcast;

  String get video;

  String get exercise;

  String get article;

  String get audio;

  String get live;

  String get multilevel;

  String get performance;

  String get textualMaterial;
}
