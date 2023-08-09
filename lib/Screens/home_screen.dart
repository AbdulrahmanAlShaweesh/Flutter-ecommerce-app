// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, must_be_immutable, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Widgets/catigories.dart';
import 'package:flutter_ecommerce_app/Widgets/custom_botton_navigation_bar.dart';
import 'package:flutter_ecommerce_app/Widgets/custom_speical_offerce.dart';
import 'package:flutter_ecommerce_app/Widgets/home_Screen_sliders.dart';
import 'package:flutter_ecommerce_app/Widgets/popular_iterms.dart';
import 'package:flutter_ecommerce_app/Widgets/product_search_text_field.dart';
import 'package:flutter_ecommerce_app/Widgets/special_offers_widget.dart';

class ProductsHomeScreen extends StatelessWidget {
  ProductsHomeScreen({super.key});

  static String id = 'product home screen';
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5f7f9),
      key: scaffoldKey,
      appBar: AppBar(
        leadingWidth: double.infinity,
        // leading: null,
        centerTitle: false,
        toolbarHeight: 70,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: SearchProductTextField(),
      ),
      // drawer: Drawer(),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          CustomHomeScreenSlider(),
          SizedBox(
            height: 20,
          ),
          CustomCatigoriesWidget(),
          CustomSpicalOffers(
            text: 'Special for you',
            seeAll: 'See More',
          ),
          SpeicalOffers(),
          CustomSpicalOffers(
            text: 'Most Popular',
            seeAll: 'See More',
          ),
          CustomPopularItemsWidget(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
