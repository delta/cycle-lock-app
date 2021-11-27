import 'dart:async';

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapController extends GetxController {
  late GoogleMapController mapController;

  final CameraPosition kGooglePlex = const CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  Future<void> zoom(int mode) async {
    var currentZoomLevel = await mapController.getZoomLevel();
    currentZoomLevel = currentZoomLevel + mode;
    mapController.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: const LatLng(37.43296265331129, -122.08832357078792),
          zoom: currentZoomLevel,
        ),
      ),
    );
  }
}
