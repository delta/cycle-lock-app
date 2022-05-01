import 'package:cycle_lock/views/widgets/zoom_controls.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Stack(children: [
        GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: const CameraPosition(target: LatLng(0, 0)),
          zoomControlsEnabled: false,
          onMapCreated: (GoogleMapController control) {
            // controller.mapController = control;
          },
          padding: const EdgeInsets.only(top: 155.0),
        ),
        const ZoomControls()
      ]);
}
