import 'package:flutter/material.dart';
import 'colours.dart';

class CustomAppbar extends StatelessWidget {
  final String title;

  const CustomAppbar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53,
      child: Center(
        child: Text(
          title,
          style: TextStyle(color: const AppColours().white, fontSize: 25),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)),
        color: const AppColours().violetFill,
      ),
    );
  }
}
