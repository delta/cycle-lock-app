import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class MainController extends GetxController {
  var nav = 1.obs;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  onClick(int index) => nav.value = index;
}
