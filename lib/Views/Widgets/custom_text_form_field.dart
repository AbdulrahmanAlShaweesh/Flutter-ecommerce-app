import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.icons,
  });

  final String hintText;
  final IconData icons;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: IconButton(
          onPressed: () {},
          icon: Icon(
            icons,
            color: Colors.black,
          ),
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
