import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gradient_text/app/models/user.dart';
import 'package:gradient_text/app/modules/core/auth/auth_store.dart';
import 'package:mobx/mobx.dart';

import '../../../core/ui/widgets/app_logo.dart';

class AuthHomePage extends StatefulWidget {
  final AuthStore _authStore;
  const AuthHomePage({super.key, required AuthStore authStore})
      : _authStore = authStore;

  @override
  State<AuthHomePage> createState() => _AuthHomePageState();
}

class _AuthHomePageState extends State<AuthHomePage> {
  @override
  void initState() {
    super.initState();
    reaction<User?>((_) => widget._authStore.userLogged, (userLogged) {
      if (userLogged != null && userLogged.email.isNotEmpty) {
        Modular.to.navigate('/home');
      } else {
        Modular.to.navigate('/auth/login');
      }
    });
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      widget._authStore.loadUserLogged();
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: AppLogo(),
      ),
    );
  }
}
