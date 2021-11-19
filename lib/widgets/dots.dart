import 'package:flutter/material.dart';

class SlideDots extends StatelessWidget {
  final int index;
  final int selectedIndex;
  const SlideDots({Key? key, required this.index, required this.selectedIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      /*onTap: () {
        controller.onSlide(index);
        controller.pageController.animateToPage(controller.index.value,
            duration: const Duration(milliseconds: 250), curve: Curves.easeIn);
      },
      */
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: selectedIndex == index ? 12 : 8,
        width: selectedIndex == index ? 12 : 8,
        decoration: BoxDecoration(
          color: selectedIndex == index
              ? Theme.of(context).primaryColor
              : Colors.grey,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
      ),
    );
  }
}
