// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void showSnakBarErrorMeggase(
    {required BuildContext context, required errorMessage}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(errorMessage),
    ),
  );
}
