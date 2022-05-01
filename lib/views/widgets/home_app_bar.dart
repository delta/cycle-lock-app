import 'package:cycle_lock/views/themes/colors.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  final String title;

  const HomeAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        height: 55,
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: const AppColours().bodycolor, fontSize: 22),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40)),
          color: const AppColours().primarycolor,
        ),
      );
}
