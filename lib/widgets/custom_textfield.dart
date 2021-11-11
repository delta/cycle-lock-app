import 'package:flutter/material.dart';
import 'app_theme.dart';

class CustomTextField extends StatelessWidget {
  final String inputText;
  const CustomTextField({required Key? key, required this.inputText}) :super(key: key);
 // const CustomTextField({required this.inputText});

  @override
  Widget build(BuildContext context) {
    if (inputText == 'Enter your password') {
      return TextField(
        obscureText: true,
        decoration: InputDecoration(
          fillColor: AppTheme.colours.grey50,
          filled: true,
          hintText: inputText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      );
    } else {
      return TextField(
        decoration: InputDecoration(
          fillColor: AppTheme.colours.grey50,
          filled: true,
          hintText: inputText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      );
    }
  }
}
