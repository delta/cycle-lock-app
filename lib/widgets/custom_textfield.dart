import 'package:cycle_lock/widgets/app_theme.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String inputText;
  final bool obscureText;

  const CustomTextField(
      {required Key? key, required this.inputText, required this.obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        fillColor: AppTheme.colours.grey50,
        filled: true,
        hintText: inputText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
