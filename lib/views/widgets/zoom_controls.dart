import 'package:cycle_lock/views/themes/colors.dart';
import 'package:flutter/material.dart';

class ZoomControls extends StatelessWidget {
  const ZoomControls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Positioned(
        bottom: 100,
        right: 16,
        child: Card(
          elevation: 2,
          child: SizedBox(
            width: 40,
            height: 104,
            child: Column(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.add,
                      color: const AppColours().secondaryaccentcolor2),
                  onPressed: () => () {}, //controller.zoom(2),
                ),
                const Divider(height: 5),
                IconButton(
                  icon: Icon(Icons.remove,
                      color: const AppColours().secondaryaccentcolor2),
                  onPressed: () => () {}, // controller.zoom(-2),
                ),
              ],
            ),
          ),
        ),
      );
}
