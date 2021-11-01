import 'package:cycle_lock/api/api_manager.dart';
import 'package:cycle_lock/models/scan_model.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

class ScanningController extends GetxController with StateMixin<ScanningModel> {
  final _apiManager = Get.find<ApiManager>();

  Future<void> scanQR(String barcode) async {
    final Response response = await _apiManager.scanQR({'barcode': barcode});
    if (response.hasError) {
      change(null, status: RxStatus.error(response.statusText));
    } else {
      change(ScanningModel.fromJson(response.body), status: RxStatus.success());
    }
  }
}
