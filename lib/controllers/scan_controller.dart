import 'package:cycle_lock/api/api_manager.dart';
import 'package:cycle_lock/models/scan_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScanningController extends GetxController with StateMixin<ScanningModel> {
  final _apiManager = Get.find<ApiManager>();
  var isFlashOn = false.obs;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? qrController;

  Future<void> scanQR(String barcode) async {
    final Response response = await _apiManager.scanQR({'barcode': barcode});
    if (response.hasError) {
      change(null, status: RxStatus.error(response.statusText));
    } else {
      change(ScanningModel.fromJson(response.body), status: RxStatus.success());
    }
  }

  void onQRViewCreated(QRViewController controller) async {
    qrController = controller;
    controller.scannedDataStream.listen((scanData) {
      result = scanData;
      Get.snackbar('QR', result!.code!);
    });
  }

  void flash() async {
    await qrController?.toggleFlash();
    qrController?.getFlashStatus().then((value) => isFlashOn.value = value!);
  }

  FlutterBlue flutterBlue = FlutterBlue.instance;

  void scanForDevices(String deviceId) {
    flutterBlue.startScan(timeout: const Duration(seconds: 8));

    flutterBlue.scanResults.listen((results) async {
      for (ScanResult result in results) {
        if (deviceId.isEmpty && deviceId == result.device.id.toString()) {
          var device = result.device;
          await device.connect();
          flutterBlue.stopScan();
        }
      }
    });
  }

  @override
  void onClose() {
    flutterBlue.stopScan();
    super.onClose();
  }
}
