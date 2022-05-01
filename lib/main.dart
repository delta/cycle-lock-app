import 'package:cycle_lock/bindings/initial_binding.dart';
import 'package:cycle_lock/views/routes/navigation_pages.dart';
import 'package:cycle_lock/views/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';

void main() async {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.top]);
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: const AppColours().primarycolor));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        initialBinding: InitialBindings(),
        initialRoute: '/splash',
        getPages: NavigationPages.getPages(),
      );
}
