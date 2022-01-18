import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  static String signUp = '/signUp';

  const SignUpPage({Key? key}) : super(key: key);
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
            const TextField(
              decoration: InputDecoration(
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
