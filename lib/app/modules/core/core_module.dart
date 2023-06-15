import 'package:flutter_modular/flutter_modular.dart';
import 'package:gradient_text/app/core/rest/dio/custom_dio.dart';
import 'package:gradient_text/app/core/rest/rest_client.dart';
import 'package:gradient_text/app/core/storage/flutter_secure_storage/flutter_secure_local_storage.dart';
import 'package:gradient_text/app/core/storage/local_storage.dart';
import 'package:gradient_text/app/core/storage/shared_preferences/sp_local_storage.dart';
import 'package:gradient_text/app/modules/core/auth/auth_store.dart';

class CoreModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton<AuthStore>(
          (i) => AuthStore(),
          export: true,
        ),
        Bind.lazySingleton<RestClient>(
          (i) => CustomDio(),
          export: true,
        ),
        Bind.lazySingleton<LocalStorage>(
          (i) => SpLocalStorage(),
          export: true,
        ),
        Bind.lazySingleton<LocalSecureStorage>(
          (i) => FlutterSecureLocalStorage(),
          export: true,
        )
      ];

  @override
  List<ModularRoute> get routes => [];
}
