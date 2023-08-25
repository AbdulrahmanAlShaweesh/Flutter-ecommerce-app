import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.green,
        child: const Center(
            child: Text(
          'Page 2',
          style: TextStyle(color: Colors.black),
        )),
      ),
    );
  }
}
