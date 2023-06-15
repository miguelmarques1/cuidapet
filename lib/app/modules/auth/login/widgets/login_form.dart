part of '../login_page.dart';

class _LoginForm extends StatefulWidget {
  const _LoginForm();

  @override
  State<_LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<_LoginForm> {
  @override
  Widget build(BuildContext context) {
    return const Form(
      child: Column(
        children: [
          AppTextField(
            label: 'Login',
          ),
          SizedBox(
            height: 10,
          ),
          AppTextField.password(
            label: 'Senha',
          ),
          SizedBox(
            height: 10,
          ),
          AppButton(label: "ENTRAR"),
        ],
      ),
    );
  }
}
