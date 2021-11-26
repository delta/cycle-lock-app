import 'package:cycle_lock/controllers/auth_controller.dart';
import 'package:cycle_lock/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class DauthButton extends StatelessWidget {
  const DauthButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<AuthController>();
    return Container(
      width: 320,
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: TextButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              flex: 1,
              child: Image.asset(
                'assets/images/delta_logo.png',
                height: 32.5,
                width: 32.5,
              ),
            ),
            const Expanded(
              child: Text(
                'Sign in with DeltaForce',
                style: TextStyle(fontSize: 14, color: Colors.white),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
        style: ButtonStyle(
            elevation: MaterialStateProperty.all<double>(16),
            backgroundColor: MaterialStateProperty.all<Color>(
                const AppColours().primarydarkcolor),
            shadowColor: MaterialStateProperty.all<Color>(
                const AppColours().primarydarkcolor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: const BorderSide(color: Colors.black)))),
        onPressed: controller.onLogin,
      ),
    );
  }
}
