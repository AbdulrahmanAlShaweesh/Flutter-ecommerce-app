// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class CustomTextFromFieldWidget extends StatelessWidget {
  CustomTextFromFieldWidget({
    super.key,
    required this.icons,
    required this.hintText,
    required this.onPressed,
    this.visbleIcon,
    required this.obscureText,
    required this.validate,
    required this.controller,
  });

  IconData icons;
  String hintText;
  VoidCallback onPressed;
  IconData? visbleIcon;
  bool obscureText;
  String? Function(String?)? validate;
  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          // margin: EdgeInsets.only(right: 10.0),
          width: 0,
          child: Icon(
            icons,
            size: 24.0,
            color: Colors.grey,
          ),
        ),
        Expanded(
          child: TextFormField(
            controller: controller,
            validator: validate,
            obscureText: obscureText,
            style: TextStyle(
              color: Colors.black.withOpacity(0.8),
              fontSize: 15.0,
            ),
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: onPressed,
                icon: Icon(
                  visbleIcon,
                  color: Colors.grey,
                ),
              ),
              hintStyle: TextStyle(
                  fontSize: 16.0, color: Colors.grey.withOpacity(0.9)),
              hintText: hintText,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 30.0, vertical: 13),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.withOpacity(0.5),
                  width: 1.4,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 1.5,
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.withOpacity(0.5),
                  width: 1.5,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
