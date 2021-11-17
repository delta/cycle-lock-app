import 'package:cycle_lock/controllers/main_controller.dart';
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
                Container(
                  height: 45,
                  child: Center(
                    child: Text(
                      pageList[controller.nav.value]['name'] as String,
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40)),
                    color: Color(0xff28245f),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
                    height: 55,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      color: Color(0xff28245f),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: pageList
                            .asMap()
                            .map((index, value) => MapEntry(
                                index,
                                Flexible(
                                  child: InkWell(
                                    child: Container(
                                      width: 50,
                                      color: index == controller.nav.value
                                          ? const Color(0xffff633c)
                                          : Colors.transparent,
                                      padding: const EdgeInsets.all(5),
                                      child: Icon(value['icon'] as IconData,
                                          color: Colors.white),
                                    ),
                                    onTap: () {
                                      controller.onClick(index);
                                    },
                                  ),
                                )))
                            .values
                            .toList()),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
