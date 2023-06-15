import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:gradient_text/app/core/storage/local_storage.dart';

class FlutterSecureLocalStorage implements LocalSecureStorage {
  FlutterSecureStorage get _instance => const FlutterSecureStorage();

  @override
  Future<void> clear() async {
    _instance.deleteAll();
  }

  @override
  Future<bool> contains(String key) async {
    return await _instance.containsKey(key: key);
  }

  @override
  Future<String?> read(String key) async {
    return await _instance.read(key: key);
  }

  @override
  Future<void> remove(String key) async {
    await _instance.delete(key: key);
  }

  @override
  Future<void> write(String key, String value) async {
    await _instance.write(key: key, value: value);
  }
}
