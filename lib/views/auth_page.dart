import 'package:cycle_lock/controllers/login_controller.dart';
import 'package:cycle_lock/views/main_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class AuthPage extends GetView<AuthController> {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/login bg.png'), fit: BoxFit.cover)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 40, top: 265),
              child: Text('Welcome User',style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily:'Moon',
                  fontSize: 40
              ),),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery
                    .of(context)
                    .size
                    .height * 0.5, right: 35, left: 35),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade50,
                        filled: true,
                        hintText: 'Enter your e-mail',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),

                      ),
                    ),
                    SizedBox(
                      height: 37,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade50,
                        filled: true,
                        hintText: 'Enter your password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),

                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Login', style: TextStyle(
                            fontSize: 30,
                            fontFamily:'Moon' ,
                        ),),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(000000),
                          child: IconButton(
                            color: Colors.white,
                            onPressed: () =>Get.to(const MainPage()),
                            icon: Icon(Icons.arrow_forward_ios_outlined),
                          ),
                        )
                      ],

                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(onPressed: () {},
                          child: Text('Sign Up', textAlign: TextAlign.left,
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontFamily: 'Moon',
                                color: Color(0xff4c505b),
                                fontSize: 18),

                          ),
                          style: ButtonStyle(),
                        ),
                        TextButton(onPressed: () {},
                            child: Text('Forgot Password?', style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontFamily: 'Moon',
                              fontSize: 18,
                              color: Color(0xff4c505b),
                            ),)),
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



