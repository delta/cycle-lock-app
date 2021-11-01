import 'package:cycle_lock/models/scan_model.dart';
import 'package:get/get_connect.dart';

class ApiManager extends GetConnect {
  Future<Response<ScanningModel>> scanQR(body) =>
      post<ScanningModel>('http://url/scan', body,
          decoder: (obj) => ScanningModel.fromJson(obj));
}
