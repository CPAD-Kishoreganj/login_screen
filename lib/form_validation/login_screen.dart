import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  static String lgScreen = '/lgScreen';
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Email",
                  //errorText: 'please enter  valid email',
                  border: OutlineInputBorder(),
                ),
                validator: (String? value) {
                  if (!value!.contains("@gmail.com")) {
                    return "please enter a valid email";
                  }
                },
                onSaved: (newValue) {
                  email = newValue!;
                },
              ),
              const SizedBox(height: 12),
              TextFormField(
                obscureText: isVisible ? true : false,
                decoration: InputDecoration(
                  hintText: "password",
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                    icon: isVisible
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility),
                  ),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.length < 6) {
                    return 'Password must be more than 5 characters';
                  }
                },
                onSaved: (newValue) {
                  password = newValue!;
                },
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    print("your $email and $password");
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
