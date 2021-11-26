import 'package:cycle_lock/controllers/auth_controller.dart';
import 'package:cycle_lock/views/widgets/carousel.dart';
import 'package:cycle_lock/views/widgets/dauth_button.dart';
import 'package:cycle_lock/views/widgets/dots.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class AuthPage extends GetView<AuthController> {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: const <Widget>[Carousel(), SlideDots()],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const DauthButton()
              ],
            ),
          ),
        ),
      );
}
