import 'package:flutter/material.dart';
import 'package:tacaro/modulos/login/create_account_page.dart';
import 'package:tacaro/modulos/login/login_controller.dart';
import 'package:tacaro/shared/theme/app_theme.dart';
import 'package:tacaro/shared/widgets/button/button.dart';
import 'package:tacaro/shared/widgets/input_text/input_text.dart';
import 'package:validators/validators.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
        child: SingleChildScrollView(
          child: Form(
            key: _controller.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 200,
                ),
                InputText(
                  label: "Email",
                  hint: "Digite seu email",
                  onChanged: (val) => _controller.onChange(email: val),
                  validator: (value) =>
                      isEmail(value) ? null : "Digite um email válido",
                ),
                SizedBox(
                  height: 18,
                ),
                InputText(
                  label: "Senha",
                  hint: "Digite sua Senha",
                  onChanged: (val) => _controller.onChange(passwor: val),
                  obscure: true,
                  validator: (value) => value.length >= 6
                      ? null
                      : "Digite uma senha com pelo menos 6 dígitos",
                ),
                SizedBox(
                  height: 14,
                ),
                Button(
                  label: "Entrar",
                  type: ButtonType.fill,
                  onTap: () {
                    _controller.login();
                  },
                ),
                SizedBox(
                  height: 50,
                ),
                Button(
                  label: "Criar uma conta",
                  type: ButtonType.outline,
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      "/login/create-account",
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
