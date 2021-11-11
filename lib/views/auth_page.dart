import 'package:cycle_lock/controllers/login_controller.dart';
import 'package:cycle_lock/views/main_page.dart';
import 'package:cycle_lock/widgets/app_theme.dart';
import 'package:cycle_lock/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class AuthPage extends GetView<AuthController> {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/login-bg.webp'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 40, top: 265),
              child: Text(
                'Welcome User',
                style: TextStyle(
                    color: AppTheme.colours.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Moon',
                    fontSize: 40),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5,
                    right: 35,
                    left: 35),
                child: Column(
                  children: [
                    const CustomTextField(
                        key: null, inputText: 'Enter your e-mail'),
                    const SizedBox(
                      height: 37,
                    ),
                    const CustomTextField(
                        key: null, inputText: 'Enter your password'),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Moon',
                          ),
                        ),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: AppTheme.colours.black,
                          child: IconButton(
                            color: AppTheme.colours.white,
                            onPressed: () => Get.to(const MainPage()),
                            icon: const Icon(Icons.arrow_forward_ios_outlined),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Sign Up',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontFamily: 'Moon',
                                color: AppTheme.colours.darkGrey,
                                fontSize: 18),
                          ),
                          style: const ButtonStyle(),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontFamily: 'Moon',
                                fontSize: 18,
                                color: AppTheme.colours.darkGrey,
                              ),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
