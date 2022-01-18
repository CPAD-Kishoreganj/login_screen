import 'package:flutter/material.dart';
import 'package:login_screen/form_validation/login_screen.dart';
import 'package:login_screen/pages/page_one.dart';
import 'package:login_screen/pages/page_two.dart';
import 'package:login_screen/pages/signup_page.dart';

import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: LogInScreen.lgScreen,
      routes: {
        LogInScreen.lgScreen: (context) => const LogInScreen(),
        LoginPage.login: (context) => const LoginPage(),
        SignUpPage.signUp: (context) => const SignUpPage(),
        PageOne.pageOne: (context) => const PageOne(),
        PageTwo.pageTwo: (context) => const PageTwo(),
      },
    );
  }
}
