import 'package:module_core/config/agfit_storage.dart';
import 'package:module_core/service/local_storage_service/interface/local_storage_interface.dart';

class LocalStorageService implements ILocalStorage {
  @override
  Future delete(String key) async {
    var shared = await AgfitStorage.sharedPreferences();
    shared.remove(key);
  }

  @override
  Future get(String key) async {
    var shared = await AgfitStorage.sharedPreferences();
    return shared.get(key);
  }

  @override
  Future put(String key, String value) async {
    var shared = await AgfitStorage.sharedPreferences();
    shared.setString(key, value);
  }

  @override
  Future<void> reload() async {
    var shared = await AgfitStorage.sharedPreferences();
    shared.reload();
  }
}
