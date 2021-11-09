import 'package:cycle_lock/api/api_manager.dart';
import 'package:cycle_lock/models/scan_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScanningController extends GetxController with StateMixin<ScanningModel> {
  final _apiManager = Get.find<ApiManager>();
  String scanResult = '';
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

  Future<void> scanQR(String barcode) async {
    final Response response = await _apiManager.scanQR({'barcode': barcode});
    if (response.hasError) {
      change(null, status: RxStatus.error(response.statusText));
    } else {
      change(ScanningModel.fromJson(response.body), status: RxStatus.success());
    }
  }

  void onQRViewCreated(QRViewController controller) async {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      result = scanData;
      Get.snackbar('QR', result!.code!);
    });
  }

  void flash() async {
    await controller?.toggleFlash();
  }
}
