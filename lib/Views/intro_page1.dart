import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.red,
        child: const Center(
            child: Text(
          'Page 1',
          style: TextStyle(color: Colors.black),
        )),
      ),
    );
  }
}
