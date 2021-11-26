import 'package:cycle_lock/controllers/auth_controller.dart';
import 'package:cycle_lock/views/themes/colors.dart';
import 'package:cycle_lock/views/widgets/pages_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class Carousel extends StatelessWidget {
  const Carousel({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<AuthController>();
    return PageView(
      controller: controller.pageController,
      children: slideList
          .map((index, value) => MapEntry(
              index,
              Column(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        width: 300,
                        height: 250,
                        decoration: BoxDecoration(
                            //shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage(slideList[index]!.imageUrl),
                                fit: BoxFit.contain)),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        slideList[index]!.title,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: const AppColours().secondaryaccentcolor,
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Text(
                        slideList[index]!.description,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              )))
          .values
          .toList(),
      onPageChanged: controller.onSlide,
    );
  }
}
