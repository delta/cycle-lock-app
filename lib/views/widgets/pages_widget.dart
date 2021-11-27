import 'package:cycle_lock/bindings/auth_binding.dart';
import 'package:cycle_lock/bindings/main_binding.dart';
import 'package:cycle_lock/bindings/splash_binding.dart';
import 'package:cycle_lock/models/slide.dart';
import 'package:cycle_lock/views/pages/auth_page.dart';
import 'package:cycle_lock/views/pages/main_page.dart';
import 'package:cycle_lock/views/pages/screens/map_screen.dart';
import 'package:cycle_lock/views/pages/screens/scan_screen.dart';
import 'package:cycle_lock/views/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/route_manager.dart';

List<GetPage<dynamic>> getPages() => [
      GetPage(
        name: '/splash',
        page: () => const SplashPage(),
        binding: SplashBindings(),
        transition: Transition.leftToRightWithFade,
        opaque: false,
        showCupertinoParallax: true,
      ),
      GetPage(
        name: '/auth',
        page: () => const AuthPage(),
        binding: AuthBindings(),
        transition: Transition.rightToLeft,
      ),
      GetPage(
        name: '/main',
        page: () => const MainPage(),
        binding: MainBindings(),
      ),
    ];

const pageList = [
  {'name': 'Map', 'view': MapScreen(), 'icon': Icons.map},
  {'name': 'Scan', 'view': ScanScreen(), 'icon': Icons.qr_code},
  {
    'name': 'Profile',
    'view': Center(child: Text('Profile Page')),
    'icon': Icons.person
  }
];

final slideList = {
  0: Slide(
      imageUrl: 'assets/images/lock.png',
      title: 'This is a cycle app',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book'),
  1: Slide(
      imageUrl: 'assets/images/cycle-icon.webp',
      title: 'This is the second page of the app',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'),
  2: Slide(
      imageUrl: 'assets/images/cycle-icon.webp',
      title: 'This is the third page of the app',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'),
};
