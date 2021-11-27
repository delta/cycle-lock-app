import 'package:cycle_lock/controllers/scan_controller.dart';
import 'package:cycle_lock/views/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScanScreen extends GetView<ScanningController> {
  const ScanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Stack(children: <Widget>[
        Positioned(child: qrView(context)),
        Positioned(bottom: 100, right: 50, left: 50, child: controlButtons())
      ]);

  Widget qrView(context) => QRView(
        key: controller.qrKey,
        onQRViewCreated: controller.onQRViewCreated,
        overlay: QrScannerOverlayShape(
          borderColor: const AppColours().secondarycolor,
          borderRadius: 10,
          borderLength: 20,
          borderWidth: 12,
          cutOutSize: MediaQuery.of(context).size.width * 0.6,
        ),
      );

  Widget controlButtons() => IconButton(
      onPressed: controller.flash,
      icon: Obx(() => AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          child: controller.isFlashOn.value
              ? const Icon(Icons.flash_off_rounded)
              : const Icon(Icons.flash_on_rounded))));
}
