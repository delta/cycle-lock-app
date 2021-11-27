import 'package:cycle_lock/constants/carousel_list.dart';
import 'package:cycle_lock/controllers/auth_controller.dart';
import 'package:cycle_lock/views/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class CarouselScreen extends StatelessWidget {
  const CarouselScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<AuthController>();
    return PageView(
      controller: controller.pageController,
      children: Carousels.carouselList
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
                                image: AssetImage(
                                    Carousels.carouselList[index]!.imageUrl),
                                fit: BoxFit.contain)),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        Carousels.carouselList[index]!.title,
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
                        Carousels.carouselList[index]!.description,
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
