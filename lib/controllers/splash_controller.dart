import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

class SplashController extends GetxController
    with SingleGetTickerProviderMixin {
  late Timer _timer;
  late AnimationController animationController;

  @override
  void onInit() {
    animationController = AnimationController(vsync: this);
    super.onInit();
  }

  @override
  void onReady() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]);
    startTimer();
    super.onReady();
  }

  void startTimer() {
    _timer = Timer(const Duration(milliseconds: 3000), () {
      navigateUser(); //It will redirect  after 4 seconds
    });
  }

  @override
  void onClose() {
    print('bye');
    super.onClose();
  }

  void navigateUser() {
    _timer.cancel();
    Get.toNamed('/auth');
  }
}
