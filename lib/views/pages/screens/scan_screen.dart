import 'package:cycle_lock/views/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({Key? key}) : super(key: key);

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen>
    with AutomaticKeepAliveClientMixin {
  final cameraController = MobileScannerController();

  @override
  bool get wantKeepAlive => false;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Stack(
      children: [
        MobileScanner(
          allowDuplicates: false,
          controller: cameraController,
          onDetect: (barcode, args) {
            final code = barcode.rawValue;
            debugPrint('Barcode found! $code');
          },
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: IconButton(
            icon: ValueListenableBuilder<TorchState>(
              valueListenable: cameraController.torchState,
              builder: (context, state, child) {
                switch (state) {
                  case TorchState.off:
                    return const Icon(Icons.flash_off);
                  case TorchState.on:
                    return Icon(
                      Icons.flash_on,
                      color: const AppColours().secondaryaccentcolor,
                    );
                }
              },
            ),
            iconSize: 32,
            onPressed: cameraController.toggleTorch,
          ),
        ),
      ],
    );
  }
}
