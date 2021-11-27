import 'package:cycle_lock/constants/screens_List.dart';
import 'package:cycle_lock/controllers/main_controller.dart';
import 'package:cycle_lock/views/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MainController controller = Get.find<MainController>();

    return Container(
      height: 55,
      child: Center(
        child: Obx(
          () => Text(
            Screens.screenList[controller.nav.value]['name'] as String,
            style: TextStyle(color: const AppColours().bodycolor, fontSize: 22),
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)),
        color: const AppColours().primarycolor,
      ),
    );
  }
}
