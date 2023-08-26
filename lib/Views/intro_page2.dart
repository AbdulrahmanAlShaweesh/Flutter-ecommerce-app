import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/small_text.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: const BoxDecoration(
              // color: Colors.amber,
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage('assets/IntroSliderImages/TrackOrder.png'),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 30.0,
              bottom: 10.0,
            ),
            child: Text(
              'Track Your Order',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.9,
              ),
            ),
          ),
          const Column(
            children: [
              SmallText(
                text: 'You can order and track your purches',
                fontSize: 16.0,
              ),
              SmallText(
                text: 'at any time from any where, provide',
                fontSize: 16.0,
              ),
              SmallText(
                text: 'your location ',
                fontSize: 16.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
