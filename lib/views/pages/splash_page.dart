import 'package:cycle_lock/views/themes/colors.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    checkAuthState();
  }

  Future<void> checkAuthState() async {
    await Future.delayed(const Duration(seconds: 1));
    print('Logged in');
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 250,
              bottom: 100,
              left: 50,
              right: 50,
              child: Column(
                children: [
                  Image.asset('assets/images/lock.png'),
                  const SizedBox(height: 10),
                  Text(
                    'Pad-Lock',
                    style: TextStyle(
                      fontSize: 35,
                      shadows: <Shadow>[
                        Shadow(
                          offset: const Offset(1.0, 1.0),
                          blurRadius: 1.0,
                          color: const AppColours().secondaryaccentcolor,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Positioned(
              bottom: 50,
              right: 50,
              left: 50,
              child: Center(
                child: Text(
                  'Made with 💚 by DeltaForce',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            )
          ],
        ),
      );
}
