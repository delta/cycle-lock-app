import 'package:cyclelock_app/controllers/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MainPage extends GetView<MainController> {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CycleLock'),
      ),
      body: const Center(
          child: Text(
        'Delta Rox',
        style: TextStyle(color: Colors.green, fontSize: 20),
      )),
    );
  }
}
