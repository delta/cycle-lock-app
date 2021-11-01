import 'package:cycle_lock/controllers/scan_controller.dart';
import 'package:get/instance_manager.dart';

class ScanningBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScanningController>(() => ScanningController());
  }
}
