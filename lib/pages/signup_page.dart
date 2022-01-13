import 'package:flutter/material.dart';
import 'package:login_screen/pages/login_page.dart';

class SignUpPage extends StatefulWidget {
  static String signUp = '/signUp';
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: Center(
        child: Column(
          children: [
            //Text(widget.name),
            TextField(
              decoration: const InputDecoration(
                hintText: 'First Name',
                prefixIcon: Icon(Icons.person_add),
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Phone number',
                prefixIcon: Icon(Icons.call),
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Sign up'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Go back'),
            ),
          ],
        ),
      ),
    );
  }
}
