// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Widgets/product_search_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductsHomeScreen extends StatelessWidget {
  ProductsHomeScreen({super.key});

  static String id = 'product home screen';
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,

      // drawer: Drawer(),
      body: SafeArea(
        child: ListView(
          children: [
            SearchProductTextField(),
          ],
        ),
      ),
    );
  }
}
