import 'package:flutter/material.dart';
import 'package:login_screen/pages/page_two.dart';

class PageOne extends StatelessWidget {
  static String pageOne = '/pageOne';
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('page 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, PageTwo.pageTwo);
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
