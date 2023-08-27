import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.icons,
    this.onTap,
    this.icon,
    this.obscureText = false,
  });

  final String hintText;
  final IconData icons;
  final VoidCallback? onTap;
  final IconData? icon;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.black),
      obscureText: obscureText,
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
          onTap: onTap,
          child: Icon(
            icon,
            color: Colors.black.withOpacity(0.5),
          ),
        ),
        prefixIcon: IconButton(
          onPressed: () {},
          icon: Icon(icons),
          color: Colors.black.withOpacity(0.5),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.black.withOpacity(0.7),
          letterSpacing: 0.9,
        ),
        enabledBorder: fieldBorder(),
        border: fieldBorder(),
        focusedBorder: fieldBorder(),
        filled: true,
        fillColor: Colors.grey,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 15.0,
        ),
      ),
    );
  }

  OutlineInputBorder fieldBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(
        color: Colors.grey,
        width: 1,
      ),
    );
  }
}
