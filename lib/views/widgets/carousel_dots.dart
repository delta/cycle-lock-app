import 'package:cycle_lock/constants/carousel_list.dart';
import 'package:flutter/material.dart';

class CarouselDots extends StatelessWidget {
  const CarouselDots({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Stack(
        alignment: AlignmentDirectional.topStart,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(bottom: 35),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: CarouselList.carouselList
                  .map((index, value) => MapEntry(
                      index,
                      GestureDetector(
                        onTap: () {
                          // controller.onSlide(index);
                          // controller.pageController.animateToPage(
                          //     controller.index.value,
                          //     duration: const Duration(milliseconds: 250),
                          //     curve: Curves.easeIn);
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          // height: controller.index.value == index ? 16 : 8,
                          // width: controller.index.value == index ? 16 : 8,
                          decoration: const BoxDecoration(
                            // color: controller.index.value == index
                            //     ? const AppColours().secondaryaccentcolor
                            //     : Colors.grey,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                        ),
                      )))
                  .values
                  .toList(),
            ),
          )
        ],
      );
}
