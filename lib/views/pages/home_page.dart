import 'package:cycle_lock/views/widgets/bottombar_custom.dart';
import 'package:cycle_lock/views/widgets/appbar_custom.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          body: Stack(
            children: const [
              CustomAppbar(),
              CustomBottomBar(),
            ],
          ),
        ),
      );
}
