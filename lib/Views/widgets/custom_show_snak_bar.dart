import 'package:flutter/material.dart';

CustomShowSnakBarError(
    {required String errorMessage, required BuildContext context}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(errorMessage)),
  );
}
