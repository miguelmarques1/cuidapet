part of '../register_page.dart';

class _RegisterForm extends StatefulWidget {
  const _RegisterForm();

  @override
  State<_RegisterForm> createState() => __RegisterFormState();
}

class __RegisterFormState extends State<_RegisterForm> {
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
          AppTextField.password(
            label: 'Confirmar senha',
          ),
          SizedBox(
            height: 10,
          ),
          AppButton(label: "Cadastrar"),
        ],
      ),
    );
  }
}
