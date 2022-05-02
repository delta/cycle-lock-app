import 'package:cycle_lock/constants/home_pages.dart';
import 'package:cycle_lock/views/themes/colors.dart';
import 'package:flutter/material.dart';

class HomeBottomBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onSelect;

  const HomeBottomBar({
    Key? key,
    required this.selectedIndex,
    required this.onSelect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        height: 65,
        color: const AppColours().primarycolor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: homePages.map(
            (item) {
              final index = homePages.indexOf(item);
              final selected = index == selectedIndex;
              return Flexible(
                child: InkWell(
                  child: AnimatedContainer(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(40)),
                      color: selected
                          ? const AppColours().secondarycolor
                          : Colors.transparent,
                    ),
                    height: selected ? 50 : 40,
                    width: selected ? 50 : 40,
                    duration: const Duration(milliseconds: 200),
                    child: Icon(
                      item.icon,
                      color: selected ? Colors.white : Colors.white70,
                    ),
                  ),
                  onTap: () {
                    if (!selected) {
                      onSelect(index);
                    }
                  },
                ),
              );
            },
          ).toList(),
        ),
      );
}
