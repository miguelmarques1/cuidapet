import 'package:flutter_modular/flutter_modular.dart';
import 'package:gradient_text/app/modules/auth/home/auth_home_page.dart';
import 'package:gradient_text/app/modules/auth/login/login_page.dart';
import 'package:gradient_text/app/modules/auth/register/register_page.dart';
import 'package:gradient_text/app/modules/core/auth/auth_store.dart';

class AuthModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => AuthHomePage(
            authStore: Modular.get<AuthStore>(),
          ),
        ),
        ChildRoute(
          '/login',
          child: (context, args) => const LoginPage(),
        ),
        ChildRoute(
          '/register',
          child: (context, args) => const RegisterPage(),
        ),
      ];
}
