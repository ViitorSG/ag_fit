import 'package:module_external_dependencies/shared_preferences.dart';

class AgfitStorage {
  static Future<SharedPreferences> sharedPreferences() async => await SharedPreferences.getInstance();
}
