import 'package:flutter_modular/flutter_modular.dart';
import 'package:gradient_text/app/modules/auth/home/auth_home_page.dart';

class AuthModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const AuthHomePage(),
        )
      ];
}
