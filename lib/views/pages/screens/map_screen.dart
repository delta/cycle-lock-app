import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;

  @override
  Widget build(BuildContext context) => GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: const CameraPosition(target: LatLng(0, 0)),
        zoomControlsEnabled: false,
        onMapCreated: (GoogleMapController control) => mapController = control,
        padding: const EdgeInsets.only(top: 155.0),
      );
}
