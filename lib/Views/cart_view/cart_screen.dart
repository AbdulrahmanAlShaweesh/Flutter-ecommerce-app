import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  static String id = 'cart screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text('Cart Screen'),
    );
  }
}
