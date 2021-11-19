import 'package:cycle_lock/controllers/login_controller.dart';
import 'package:cycle_lock/model/slide.dart';
import 'package:cycle_lock/widgets/dots.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';
import '../widgets/carousel.dart';
import '../widgets/dots.dart';

class AuthPage extends GetView<AuthController> {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
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
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      child: TextButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Flexible(
                              flex: 1,
                              child: Image.asset(
                                'assets/delta_logo.png',
                                height: 32,
                              ),
                            ),
                            const Expanded(
                              child: Text(
                                'Sign in with DeltaForce',
                                style: TextStyle(fontSize: 12),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: const BorderSide(
                                        color: Colors.white)))),
                        onPressed: () {},
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        //FlatButton(child: Text('Login')),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
