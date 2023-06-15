import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_text/app/core/ui/widgets/app_logo.dart';
import 'package:gradient_text/app/core/ui/widgets/app_text_field.dart';

import '../../../core/ui/widgets/app_button.dart';
part 'widgets/register_form.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Register Page'),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 25.w),
        child: const SizedBox.expand(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppLogo(),
              SizedBox(
                height: 10,
              ),
              _RegisterForm(),
            ],
          ),
        ),
      ),
    );
  }
}
