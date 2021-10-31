import 'package:cyclelock_app/controllers/main_controller.dart';
import 'package:get/instance_manager.dart';

class MainBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainController());
  }
}
