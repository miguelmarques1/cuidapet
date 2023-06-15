import 'package:flutter/material.dart';
import 'package:gradient_text/app/core/ui/extensions/size_screen_extension.dart';

class AppLogo extends StatelessWidget {
  final double size;
  const AppLogo({super.key, this.size = 100});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/logo.png',
      height: 130.w,
      fit: BoxFit.contain,
    );
  }
}
