import 'package:cycle_lock/controllers/login_controller.dart';
import 'package:cycle_lock/views/main_page.dart';
import 'package:cycle_lock/widgets/app_theme.dart';
import 'package:cycle_lock/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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
                style: GoogleFonts.lato(
                    textStyle: TextStyle(
                        color: AppTheme.colours.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold)),
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
                        key: null,
                        inputText: 'Enter your e-mail',
                        obscureText: false),
                    const SizedBox(
                      height: 37,
                    ),
                    const CustomTextField(
                        key: null,
                        inputText: 'Enter your password',
                        obscureText: true),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Login',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                  color: AppTheme.colours.black, fontSize: 30)),
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
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                    color: AppTheme.colours.darkGrey,
                                    fontSize: 18,
                                    decoration: TextDecoration.underline)),
                          ),
                          style: const ButtonStyle(),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot Password?',
                              style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      color: AppTheme.colours.darkGrey,
                                      fontSize: 18,
                                      decoration: TextDecoration.underline)),
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
