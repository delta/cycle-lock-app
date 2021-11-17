import 'package:cycle_lock/controllers/scan_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScanView extends GetView<ScanningController> {
  const ScanView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Positioned(child: qrView(context)),
      // Positioned(bottom: 30, child: controlButtons())
    ]);
  }

  Widget qrView(context) => QRView(
        key: controller.qrKey,
        onQRViewCreated: controller.onQRViewCreated,
        overlay: QrScannerOverlayShape(
          borderColor: const Color(0xffff633c),
          borderRadius: 10,
          borderLength: 20,
          borderWidth: 12,
          cutOutSize: MediaQuery.of(context).size.width * 0.6,
        ),
      );

  Widget controlButtons() => Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blue.shade200),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
                onPressed: controller.flash,
                icon: const Icon(Icons.flash_on_rounded))
          ],
        ),
      );
}
