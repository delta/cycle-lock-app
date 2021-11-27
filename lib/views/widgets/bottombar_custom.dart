import 'package:cycle_lock/controllers/main_controller.dart';
import 'package:cycle_lock/views/themes/colors.dart';
import 'package:cycle_lock/views/widgets/pages_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MainController controller = Get.find<MainController>();
    return Positioned(
      bottom: 0,
      left: 0,
      child: Container(
        height: 65,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          color: const AppColours().primarycolor,
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: pageList
                .asMap()
                .map((index, value) => MapEntry(
                    index,
                    Flexible(
                        child: Obx(
                      () => InkWell(
                        child: AnimatedContainer(
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(40)),
                            color: index == controller.nav.value
                                ? const AppColours().secondarycolor
                                : Colors.transparent,
                          ),
                          height: controller.nav.value == index ? 50 : 40,
                          width: controller.nav.value == index ? 50 : 40,
                          duration: const Duration(milliseconds: 200),
                          child: Icon(value['icon'] as IconData,
                              color: index == controller.nav.value
                                  ? Colors.white
                                  : Colors.white70),
                        ),
                        onTap: () {
                          controller.onClick(index);
                        },
                      ),
                    ))))
                .values
                .toList()),
      ),
    );
  }
}
