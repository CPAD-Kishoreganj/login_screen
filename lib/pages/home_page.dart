import 'package:flutter/material.dart';
import 'package:login_screen/pages/page_one.dart';

class HomePage extends StatelessWidget {
  final String email;
  final String password;
  const HomePage({
    Key? key,
    required this.email,
    required this.password,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, PageOne.pageOne);
              },
              child: const Text('Go to Next Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Go to previous Page'),
            ),
          ],
        ),
      ),
    );
  }
}
