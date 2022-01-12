import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: Center(
        child: Column(
          children: [
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
