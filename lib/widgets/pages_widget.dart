import 'package:cycle_lock/bindings/auth_binding.dart';
import 'package:cycle_lock/bindings/main_binding.dart';
import 'package:cycle_lock/bindings/scan_binding.dart';
import 'package:cycle_lock/bindings/splash_binding.dart';
import 'package:cycle_lock/views/auth_page.dart';
import 'package:cycle_lock/views/main_page.dart';
import 'package:cycle_lock/views/scan_view.dart';
import 'package:cycle_lock/views/splash_page.dart';
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
      ),
      GetPage(
        name: '/main',
        page: () => const MainPage(),
        binding: MainBindings(),
      ),
      GetPage(
        name: '/scan',
        page: () => const ScanView(),
        binding: ScanningBindings(),
      )
    ];

const pageList = [
  {
    'name': 'Map',
    'view': Center(
      child: Text('Map page'),
    ),
    'icon': Icons.map_sharp
  },
  {'name': 'Scan', 'view': ScanView(), 'icon': Icons.qr_code},
  {
    'name': 'Profile',
    'view': Center(child: Text('Profile Page')),
    'icon': Icons.person
  }
];
