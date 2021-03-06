import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_screen/pages/home_page.dart';
import 'package:login_screen/pages/signup_page.dart';

class LoginPage extends StatefulWidget {
  static String login = '/';

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String getEmail = '';

  String getPassword = '';

  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Image.asset(
            'images/undraw.png',
            height: MediaQuery.of(context).size.height * .25,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 68.0),
            child: Text(
              "Welcome Back",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 38.0),
            child: Text(
              "log in to your existing account of facebook",
              style: TextStyle(
                fontSize: 17,
              ),
            ),
          ),
          const SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                prefixIcon: const Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Icon(Icons.person_outlined),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onChanged: (value) {
                getEmail = value;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              obscureText: isVisible ? true : false,
              decoration: InputDecoration(
                hintText: 'Password',
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                  icon: isVisible
                      ? const Icon(Icons.visibility_off)
                      : const Icon(Icons.visibility),
                ),
                prefixIcon: const Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Icon(Icons.lock_open),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onChanged: (value) {
                getPassword = value;
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Text(
              'Forgot password?',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 12,
              left: 68.0,
              right: 68,
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HomePage(
                      email: getEmail,
                      password: getPassword,
                    ),
                  ),
                );
              },
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  "LOG IN",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 32),
          const Text(
            "or connect with",
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF375E95),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.facebook),
                    SizedBox(width: 6),
                    Text("Facebook"),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFF44331),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    FaIcon(FontAwesomeIcons.adjust),
                    SizedBox(width: 6),
                    Text("Google"),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't have an account? "),
              InkWell(
                child: const Text(
                  "SignUp",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, SignUpPage.signUp);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
