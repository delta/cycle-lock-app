import 'package:cyclelock_app/api/api_manager.dart';
import 'package:get/instance_manager.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApiManager>(() => ApiManager());
  }
}
