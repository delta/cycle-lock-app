import 'package:cyclelock_app/bindings/auth_binding.dart';
import 'package:cyclelock_app/bindings/main_binding.dart';
import 'package:cyclelock_app/bindings/splash_binding.dart';
import 'package:cyclelock_app/views/auth_page.dart';
import 'package:cyclelock_app/views/main_page.dart';
import 'package:cyclelock_app/views/splash_page.dart';
import 'package:get/route_manager.dart';

List<GetPage<dynamic>> getPages() => [
      GetPage(
        name: '/splash',
        page: () => const SplashPage(),
        binding: SplashBindings(),
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
      )
    ];
