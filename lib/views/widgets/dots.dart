import 'package:cycle_lock/controllers/auth_controller.dart';
import 'package:cycle_lock/views/themes/colors.dart';
import 'package:cycle_lock/widgets/pages_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

class SlideDots extends StatelessWidget {
  const SlideDots({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<AuthController>();
    return Obx(() => Stack(
          alignment: AlignmentDirectional.topStart,
          children: <Widget>[
            Container(
                margin: const EdgeInsets.only(bottom: 35),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: slideList
                      .map((index, value) => MapEntry(
                          index,
                          GestureDetector(
                            onTap: () {
                              controller.onSlide(index);
                              controller.pageController.animateToPage(
                                  controller.index.value,
                                  duration: const Duration(milliseconds: 250),
                                  curve: Curves.easeIn);
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              height: controller.index.value == index ? 16 : 8,
                              width: controller.index.value == index ? 16 : 8,
                              decoration: BoxDecoration(
                                color: controller.index.value == index
                                    ? const AppColours().secondaryaccentcolor
                                    : Colors.grey,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(12)),
                              ),
                            ),
                          )))
                      .values
                      .toList(),
                ))
          ],
        ));
  }
}
