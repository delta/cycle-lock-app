import 'package:cycle_lock/bindings/auth_binding.dart';
import 'package:cycle_lock/bindings/main_binding.dart';
import 'package:cycle_lock/bindings/scan_binding.dart';
import 'package:cycle_lock/bindings/splash_binding.dart';
import 'package:cycle_lock/views/auth_page.dart';
import 'package:cycle_lock/views/main_page.dart';
import 'package:cycle_lock/views/scan_view.dart';
import 'package:cycle_lock/views/splash_page.dart';
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
      ),
      GetPage(
        name: '/scan',
        page: () => const ScanView(),
        binding: ScanningBindings(),
      )
    ];
