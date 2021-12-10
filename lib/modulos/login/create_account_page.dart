import 'package:flutter/material.dart';
import 'package:tacaro/shared/theme/app_theme.dart';
import 'package:tacaro/shared/widgets/button/button.dart';
import 'package:tacaro/shared/widgets/input_text/input_text.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  _CreateAccountPageState createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.colors.background,
        leading: BackButton(
          color: AppTheme.colors.backbutton,
        ),
        elevation: 0,
      ),
      backgroundColor: AppTheme.colors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Criando uma conta",
                style: AppTheme.textStyles.title,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Mantenha seus gastos em dia",
                style: AppTheme.textStyles.subtitle,
              ),
              SizedBox(
                height: 40,
              ),
              InputText(
                label: "Nome",
                hint: "Digite seu nome",
              ),
              SizedBox(
                height: 18,
              ),
              InputText(
                label: "Email",
                hint: "Digite seu email",
              ),
              SizedBox(
                height: 18,
              ),
              InputText(
                label: "Senha",
                hint: "Digite sua Senha",
                obscure: true,
              ),
              SizedBox(
                height: 14,
              ),
              Button(
                label: "Criar uma conta",
                type: ButtonType.fill,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
