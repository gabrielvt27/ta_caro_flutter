import 'package:flutter/material.dart';
import 'package:tacaro/modulos/login/create_account_page.dart';
import 'package:tacaro/modulos/login/login_page.dart';
import 'package:tacaro/modulos/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tá Caro?",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => const SplashPage(),
        "/login": (context) => const LoginPage(),
        "/login/create-account": (context) => const CreateAccountPage(),
      },
    );
  }
}
