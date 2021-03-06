import 'package:cycle_lock/views/themes/colors.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;

  const HomeAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        height: 55,
        color: const AppColours().primarycolor,
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: const AppColours().bodycolor, fontSize: 22),
          ),
        ),
      );

  @override
  Size get preferredSize => const Size(double.infinity, 60);
}
