// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class SpeicalOffers extends StatelessWidget {
  const SpeicalOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          bottomLeft: Radius.circular(20.0),
        ),
        child: Container(
          padding: EdgeInsets.only(top: 5.0),
          height: 130,
          decoration: BoxDecoration(
            // color: Colors.red,
            borderRadius: BorderRadius.circular(
              10.0,
            ),
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15.0),
                    height: 110,
                    width: 230,
                    decoration: BoxDecoration(
                      // color: Colors.green,
                      borderRadius: BorderRadius.circular(
                        15.0,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(
                            0.23,
                          ),
                          offset: Offset(2, 3),
                          blurRadius: 3,
                          spreadRadius: 3.0,
                        ),
                      ],
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://hnsgsfp.imgix.net/9/images/detailed/89/honor-x8a-4g-smartphone-8gb-128gb-titanium-silver_1.jpg?fit=fill&bg=0FFF&w=1534&h=900&auto=format,compress',
                        ),
                        fit: BoxFit.cover,
                        opacity: 0.3,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 40.0,
                    top: 30.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'SmartPhone',
                          style: TextStyle(
                            fontSize: 19.0,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          '18 Brands',
                          style: TextStyle(
                            fontSize: 16.0,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
    ;
  }
}
