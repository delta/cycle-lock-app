import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/services.dart';
import 'auth_page.dart';
import 'package:get/get.dart';

void main() => {
  runApp(const SplashPage())
};

void startTimer() {
  Timer(const Duration(seconds: 5), () {
    navigateUser(); //It will redirect  after 5 seconds
  });
}

void navigateUser() async{
  Get.to(const AuthPage());
}

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
    startTimer();
    return MaterialApp(
      home: Scaffold(
        body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center ,
        children:[
        const SizedBox(height: 255),
        Lottie.asset(
        'assets/lottie/cycling.json',
        repeat: true,
        animate: true,
            ),
          const SizedBox(height: 5),
          const Text('Pad-Lock',
              style: TextStyle(fontFamily: 'Moon', fontSize: 35,
                  shadows: <Shadow>[
              Shadow(
              offset: Offset(3.0, 3.0),
            blurRadius: 3.0,
            color: Color.fromARGB(150, 36, 195, 20),
              )])
          ),
          const SizedBox(height: 240),
          const Text('Made with 💚 by Delta',
          style: TextStyle(fontFamily: 'Moon', fontSize: 18))

        ],
        ),
      ),
    )
    );
  }
}

//ElevatedButton(
//               onPressed: () => Get.to(const AuthPage()), // Passing data by using "arguments"
//               child: const Text('Go to page One')),