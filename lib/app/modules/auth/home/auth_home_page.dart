import 'package:flutter/material.dart';
import 'package:gradient_text/core/ui/extensions/size_screen_extension.dart';

class AuthHomePage extends StatelessWidget {
  const AuthHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/logo.png',
          height: 130.w,
          width: 162.h,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
