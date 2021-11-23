import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  var index = 0.obs;
  final PageController pageController = PageController(initialPage: 0);

  onSlide(int i) => index.value = i;
  onLogin() => Get.toNamed('/main');
}
