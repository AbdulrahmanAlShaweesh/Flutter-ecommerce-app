// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, must_be_immutable, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/home_Screen_sliders.dart';
import 'package:flutter_ecommerce_app/Views/cart_screen.dart';
import 'package:flutter_ecommerce_app/Views/catigories_screen.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_botton_navigation_bar.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_drawer.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_home_screen_body.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/product_search_text_field.dart';
import 'package:flutter_ecommerce_app/Views/chat_screen.dart';

class ProductsHomeScreen extends StatelessWidget {
  ProductsHomeScreen({super.key});

  static String id = 'product home screen';
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  List<Widget> screens = [
    CusstomHomeScreenBody(),
    CatigoriesScreen(),
    ChatScreen(),
    CartScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5f7f9),
      key: scaffoldKey,
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
      body: const CusstomHomeScreenBody(),
      bottomNavigationBar: CustomBottomNavigationBar(
        scaffoldKey: scaffoldKey,
      ),
    );
  }
}
