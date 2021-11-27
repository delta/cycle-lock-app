import 'package:cycle_lock/bindings/auth_binding.dart';
import 'package:cycle_lock/bindings/main_binding.dart';
import 'package:cycle_lock/bindings/splash_binding.dart';
import 'package:cycle_lock/views/pages/auth_page.dart';
import 'package:cycle_lock/views/pages/main_page.dart';
import 'package:cycle_lock/views/pages/splash_page.dart';
import 'package:cycle_lock/views/routes/navigation_routes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

class NavigationPages {
  static List<GetPage<dynamic>> getPages() => [
        GetPage(
          name: NavigationRoutes.splashRoute,
          page: () => const SplashPage(),
          binding: SplashBindings(),
          transition: Transition.leftToRightWithFade,
          opaque: false,
          showCupertinoParallax: true,
        ),
        GetPage(
          name: NavigationRoutes.authRoute,
          page: () => const AuthPage(),
          binding: AuthBindings(),
          transition: Transition.rightToLeft,
        ),
        GetPage(
          name: NavigationRoutes.mainRoute,
          page: () => const MainPage(),
          binding: MainBindings(),
        ),
      ];
}
