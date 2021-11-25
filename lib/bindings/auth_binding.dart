import 'package:cycle_lock/controllers/auth_controller.dart';
import 'package:get/instance_manager.dart';

class AuthBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());
  }
}
