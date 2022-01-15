import 'package:flutter/material.dart';
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
      initialRoute: LoginPage.login,
      routes: {
        LoginPage.login: (context) => const LoginPage(),
        SignUpPage.signUp: (context) => SignUpPage(),
        PageOne.pageOne: (context) => PageOne(),
        PageTwo.pageTwo: (context) => PageTwo(),
      },
    );
  }
}
