// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SearchProductTextField extends StatelessWidget {
  const SearchProductTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10),
      height: 70,
      width: double.infinity,
      // color: Colors.green,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Product',
                hintStyle: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                fillColor: Color(0xFFf3f3f5),
                filled: true,
                contentPadding: EdgeInsets.symmetric(
                  // horizontal: 5.0,
                  vertical: 15.0,
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 60,
            width: 70,
            decoration: BoxDecoration(
              color: Color(0xFFf3f3f5),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.grey,
              size: 26.0,
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 60,
            width: 70,
            decoration: BoxDecoration(
              color: Color(0xFFf3f3f5),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.notifications_outlined,
              color: Colors.grey,
              size: 26.0,
            ),
          ),
        ],
      ),
    );
  }
}
