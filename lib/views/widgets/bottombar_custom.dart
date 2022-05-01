import 'package:cycle_lock/constants/screen_list.dart';
import 'package:cycle_lock/views/themes/colors.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Positioned(
        bottom: 0,
        left: 0,
        child: Container(
          height: 65,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40)),
            color: const AppColours().primarycolor,
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: ScreenList.screenList
                  .asMap()
                  .map(
                    (index, value) => MapEntry(
                      index,
                      Flexible(
                        child: InkWell(
                          child: AnimatedContainer(
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                              // color: index == controller.nav.value
                              //     ? const AppColours().secondarycolor
                              //     : Colors.transparent,
                            ),
                            // height: controller.nav.value == index ? 50 : 40,
                            // width: controller.nav.value == index ? 50 : 40,
                            duration: const Duration(milliseconds: 200),
                            child: Icon(value['icon'] as IconData,
                                color: index == 1 // controller.nav.value
                                    ? Colors.white
                                    : Colors.white70),
                          ),
                          onTap: () {
                            // controller.onClick(index);
                          },
                        ),
                      ),
                    ),
                  )
                  .values
                  .toList()),
        ),
      );
}
