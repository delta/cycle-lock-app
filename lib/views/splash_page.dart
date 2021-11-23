import 'package:cycle_lock/controllers/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 255),
            Lottie.asset(
              'assets/lottie/cycling.json',
              animate: true,
            ),
            const SizedBox(height: 5),
            const Text('Pad-Lock',
                style: TextStyle(fontSize: 35, shadows: <Shadow>[
                  Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 1.0,
                    color: Color.fromARGB(150, 36, 195, 20),
                  )
                ])),
            const SizedBox(height: 240),
            const Text('Made with 💚 by DeltaForce',
                style: TextStyle(fontSize: 18))
          ],
        ),
      ),
    );
  }
}
