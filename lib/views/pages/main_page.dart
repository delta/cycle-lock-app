import 'package:cycle_lock/controllers/main_controller.dart';
import 'package:cycle_lock/views/widgets/bottombar_custom.dart';
import 'package:cycle_lock/views/widgets/appbar_custom.dart';
import 'package:cycle_lock/views/widgets/pages_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MainPage extends GetView<MainController> {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
          child: Scaffold(
        key: controller.scaffoldKey,
        body: Stack(
          children: [
            Obx(
              () => pageList[controller.nav.value]['view']! as Widget,
            ),
            const CustomAppbar(),
            const CustomBottomBar(),
          ],
        ),
      ));
}
