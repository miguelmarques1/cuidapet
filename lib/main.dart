import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gradient_text/app/app_module.dart';
import 'package:gradient_text/app/app_widget.dart';
import 'package:gradient_text/app/core/config/application_config.dart';

void main() async {
  await ApplicationConfig().configure();
  runApp(
    ModularApp(
      module: AppModule(),
      child: const AppWidget(),
    ),
  );
}
