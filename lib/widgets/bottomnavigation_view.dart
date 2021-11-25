import 'package:cycle_lock/controllers/main_controller.dart';
import 'package:cycle_lock/widgets/colours.dart';
import 'package:cycle_lock/widgets/pages_widget.dart';
import 'package:flutter/material.dart';

class BottomNavView extends StatelessWidget {
  final MainController controller;

  const BottomNavView({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) => Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          height: 65,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: const AppColours().violetFill,
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: pageList
                  .asMap()
                  .map((index, value) => MapEntry(
                      index,
                      Flexible(
                        child: InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              color: index == controller.nav.value
                                  ? const AppColours().orangeAccent
                                  : Colors.transparent,
                            ),
                            height: 45,
                            width: 45,
                            padding: const EdgeInsets.all(5),
                            child: Icon(value['icon'] as IconData,
                                color: const AppColours().white),
                          ),
                          onTap: () {
                            controller.onClick(index);
                          },
                        ),
                      )))
                  .values
                  .toList()),
        ),
      );
}
