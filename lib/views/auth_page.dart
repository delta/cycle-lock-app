import 'package:cycle_lock/controllers/login_controller.dart';
import 'package:cycle_lock/models/slide.dart';
import 'package:cycle_lock/widgets/carousel.dart';
import 'package:cycle_lock/widgets/colours.dart';
import 'package:cycle_lock/widgets/dots.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class AuthPage extends GetView<AuthController> {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
          child: Scaffold(
        body: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
            child: Obx(
              () => Column(
                children: <Widget>[
                  Expanded(
                    child: Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: <Widget>[
                        PageView(
                            //controller: controller.pageController,
                            children: <Widget>[
                              for (int i = 0; i < slideList.length; i++)
                                Carousel(i)
                            ],
                            onPageChanged: (index) =>
                                controller.index.value = index),
                        Stack(
                          alignment: AlignmentDirectional.topStart,
                          children: <Widget>[
                            Container(
                                margin: const EdgeInsets.only(bottom: 35),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    for (int i = 0; i < slideList.length; i++)
                                      SlideDots(
                                        index: i,
                                        selectedIndex: controller.index.value,
                                      )
                                  ],
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 10),
                    child: TextButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                            flex: 1,
                            child: Image.asset(
                              'assets/images/delta_logo.png',
                              height: 32,
                            ),
                          ),
                          const Expanded(
                            child: Text(
                              'Sign in with DeltaForce',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      style: ButtonStyle(
                          elevation: MaterialStateProperty.all<double>(16),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const AppColours().black),
                          shadowColor: MaterialStateProperty.all<Color>(
                              const AppColours().black),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: const BorderSide(
                                          color: Colors.black)))),
                      onPressed: () => controller.onLogin(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ));
}
