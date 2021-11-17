import 'package:cycle_lock/controllers/main_controller.dart';
import 'package:cycle_lock/widgets/appbar_custom.dart';
import 'package:cycle_lock/widgets/bottomnavigation_view.dart';
import 'package:cycle_lock/widgets/pages_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MainPage extends GetView<MainController> {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(() => Scaffold(
            key: controller.scaffoldKey,
            body: Stack(
              children: [
                pageList[controller.nav.value]['view']! as Widget,
                CustomAppbar(
                  title: pageList[controller.nav.value]['name'] as String,
                ),
                BottomNavView(controller: controller)
              ],
            ),
          )),
    );
  }
}
