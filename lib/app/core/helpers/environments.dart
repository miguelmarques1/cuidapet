import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environments {
  Environments._();

  static String? param(String paramName) {
    if (!kDebugMode) return dotenv.get(paramName);
    return FirebaseRemoteConfig.instance.getString(paramName);
  }

  static Future<void> loadEnvs() async {
    if (!kDebugMode) {
      await dotenv.load();
    } else {
      final remoteConfig = FirebaseRemoteConfig.instance;
      await remoteConfig.setConfigSettings(
        RemoteConfigSettings(
          fetchTimeout: const Duration(minutes: 1),
          minimumFetchInterval: const Duration(hours: 1),
        ),
      );
      await remoteConfig.fetchAndActivate();
    }
  }
}
