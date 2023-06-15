import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:gradient_text/app/core/helpers/environments.dart';
import 'package:gradient_text/app/core/ui/extensions/size_screen_extension.dart';
import 'package:gradient_text/app/core/ui/extensions/theme_extension.dart';
import 'package:gradient_text/app/core/ui/widgets/app_logo.dart';
import 'package:gradient_text/app/core/ui/widgets/company_button.dart';
import '../../../core/ui/widgets/app_button.dart';
import '../../../core/ui/widgets/app_text_field.dart';
part 'widgets/login_form.dart';
part 'widgets/login_register_buttons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
    log("URL VINDA DO FIREBASE REMOTE CONFIG ${Environments.param('base_url')}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 2.statusBar),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppLogo(),
              SizedBox(
                height: 20,
              ),
              _LoginForm(),
              SizedBox(
                height: 20,
              ),
              OrSeparator(),
              SizedBox(
                height: 20,
              ),
              _LoginRegisterButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

class OrSeparator extends StatelessWidget {
  const OrSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: .4.sw,
            child: Divider(
              thickness: 1,
              color: context.primaryColor,
            ),
          ),
          Text(
            "ou",
            style: TextStyle(
              color: context.primaryColor,
              fontSize: 18,
            ),
          ),
          SizedBox(
            width: .4.sw,
            child: Divider(
              thickness: 1,
              color: context.primaryColor,
            ),
          )
        ],
      ),
    );
  }
}
