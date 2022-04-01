import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late Timer _timer;
  late AnimationController animationController;

  @override
  void onInit() {
    animationController = AnimationController(vsync: this);
    super.onInit();
  }

  @override
  void onReady() {
    startTimer();
    super.onReady();
  }

  void startTimer() {
    _timer = Timer(const Duration(milliseconds: 3000), navigateUser);
  }

  void navigateUser() {
    _timer.cancel();
    Get.offAllNamed('/auth');
  }
}
