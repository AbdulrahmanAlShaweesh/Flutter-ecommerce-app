import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.amber,
        child: const Center(
          child: Text(
            'Page 3',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
