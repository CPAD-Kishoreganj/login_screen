import 'package:flutter/material.dart';

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
          children: [
            Text(email),
            Text(password),
          ],
        ),
      ),
    );
  }
}
