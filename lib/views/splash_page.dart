import 'package:cycle_lock/controllers/splash_controller.dart';
import 'package:cycle_lock/widgets/colours.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          children: [
            Positioned(
                top: 250,
                bottom: 100,
                child: Center(
                    child: Column(children: [
                  Lottie.asset(
                    'assets/lottie/cycling.json',
                    animate: true,
                  ),
                  const SizedBox(height: 10),
                  Text('Pad-Lock',
                      style: TextStyle(fontSize: 35, shadows: <Shadow>[
                        Shadow(
                          offset: const Offset(1.0, 1.0),
                          blurRadius: 1.0,
                          color: const AppColours().green,
                        )
                      ]))
                ]))),
            const Positioned(
                bottom: 50,
                right: 50,
                left: 50,
                child: Center(
                    child: Text('Made with 💚 by DeltaForce',
                        style: TextStyle(fontSize: 18))))
          ],
        ),
      );
}
