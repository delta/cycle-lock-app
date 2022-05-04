import 'package:cycle_lock/gen/assets.gen.dart';
import 'package:cycle_lock/views/themes/colors.dart';
import 'package:flutter/material.dart';

class DauthButton extends StatelessWidget {
  const DauthButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        width: 320,
        height: 50,
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        child: TextButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                flex: 1,
                child: Assets.images.deltaLogo.image(
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
                side: const BorderSide(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          onPressed: () {}, //controller.onLogin,
        ),
      );
}
