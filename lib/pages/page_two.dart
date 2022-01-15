import 'package:flutter/material.dart';
import 'package:login_screen/pages/login_page.dart';

class PageTwo extends StatelessWidget {
  static String pageTwo = '/pageTwo';
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Page2'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(
                    context, ModalRoute.withName(LoginPage.login));
              },
              child: const Text('Go to login Page'),
            ),
          ],
        ),
      ),
    );
  }
}
