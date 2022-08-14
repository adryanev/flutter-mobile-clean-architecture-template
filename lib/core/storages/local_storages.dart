import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalStorage {
  Future<String?> getApiKey();
  Future<void> setApiKey(String apiKey);
}

@LazySingleton(as: LocalStorage)
class LocalStorageImpl implements LocalStorage {
  const LocalStorageImpl(this._storage);
  final SharedPreferences _storage;
  static const _apiKeyKey = 'apiKey';

  @override
  Future<String?> getApiKey() {
    return Future.value(
      _storage.getString(_apiKeyKey),
    );
  }

  @override
  Future<void> setApiKey(String apiKey) async {
    await Future.value(
      _storage.setString(_apiKeyKey, apiKey),
    );
  }
}
