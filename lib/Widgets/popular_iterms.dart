// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomPopularItemsWidget extends StatelessWidget {
  const CustomPopularItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: GridView.builder(
        physics: AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 4,
          crossAxisSpacing: 5,
          mainAxisSpacing: 20,
        ),
        itemCount: 50,
        itemBuilder: (BuildContext ctx, index) {
          return Card(
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.black.withOpacity(0.23),
                //     offset: Offset(0, 5),
                //     blurRadius: 5,
                //     spreadRadius: 2,
                //   ),
                // ],
                // color: Colors.amber,
                borderRadius: BorderRadius.circular(
                  5.0,
                ),
              ),
              child: Text("name"),
            ),
          );
        },
      ),
    );
  }
}
