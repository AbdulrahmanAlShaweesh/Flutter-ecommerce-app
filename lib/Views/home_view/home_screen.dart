// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, must_be_immutable, sized_box_for_whitespace

import 'package:flutter/material.dart';

import 'package:flutter_ecommerce_app/Views/Widgets/custom_drawer.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_home_screen_body.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/product_search_text_field.dart';

class ProductsHomeScreen extends StatelessWidget {
  ProductsHomeScreen({super.key});

  static String id = 'product home screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5f7f9),
      drawer: CustomDrawer(),
      appBar: AppBar(
        leadingWidth: double.infinity,
        centerTitle: false,
        toolbarHeight: 75,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
            right: 5.0,
            left: 5.0,
          ),
          child: SearchProductTextField(),
        ),
      ),
      body: CusstomHomeScreenBody(),
    );
  }
}
