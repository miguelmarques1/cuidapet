part of '../login_page.dart';

class _LoginRegisterButtons extends StatelessWidget {
  const _LoginRegisterButtons();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      runSpacing: 10,
      children: [
        CompanyButton(
          company: "Facebook",
          onPressed: () {},
          companyIcon: const Icon(FontAwesome5.facebook),
          buttonColor: Colors.blue.shade800,
        ),
        const SizedBox(
          width: 10,
        ),
        CompanyButton(
          company: "Google",
          onPressed: () {},
          companyIcon: const Icon(FontAwesome.google),
          buttonColor: Colors.red,
        ),
        CompanyButton(
          company: "Cadastre-se",
          onPressed: () {
            Modular.to.pushNamed('/auth/register');
          },
          companyIcon: const Icon(Icons.email),
        ),
      ],
    );
  }
}
