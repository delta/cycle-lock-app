import 'package:cycle_lock/constants/screen_list.dart';
import 'package:cycle_lock/views/themes/colors.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        height: 55,
        child: const Center(child: Text('Title')
            // Obx(
            //   () => Text(
            //     ScreenList.screenList[controller.nav.value]['name'] as String,
            //     style:
            //         TextStyle(color: const AppColours().bodycolor, fontSize: 22),
            //   ),
            // ),
            ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40)),
          color: const AppColours().primarycolor,
        ),
      );
}
