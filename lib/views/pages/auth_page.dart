import 'package:cycle_lock/views/pages/screens/carousel_screen.dart';
import 'package:cycle_lock/views/widgets/dauth_button.dart';
import 'package:cycle_lock/views/widgets/carousel_dots.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
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
                    children: const <Widget>[CarouselScreen(), CarouselDots()],
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
