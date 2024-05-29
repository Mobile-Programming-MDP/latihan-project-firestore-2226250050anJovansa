import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class GoogleMapsScreen extends StatefulWidget {
  final double latitude;
  final double longitude;
  const GoogleMapsScreen(
      {super.key, required this.latitude, required this.longitude});

  @override
  State<GoogleMapsScreen> createState() => _GoogleMapsScreenState();
}

class _GoogleMapsScreenState extends State<GoogleMapsScreen> {
  final Completer<GoogleMapController> _controller = Completer();
  late CameraPosition _cameraPosition;
  late Set<Marker> _marker;
  late MarkerId _markerId;

  @override
  void initstate() {
    super.initState();
    _cameraPosition = CameraPosition(
        target: LatLng(widget.latitude, widget.longitude), zoom: 15);

    _marker = {};
    _markerId =
        MarkerId(widget.latitude.toString() + widget.longitude.toString());
    _marker.add(
      Marker(
        markerId: _markerId,
        position: LatLng(widget.latitude, widget.longitude),
        infoWindow: const InfoWindow(
          title: "Your Location",
          snippet: "Your current location is here",
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Google Map"),
      ),
      body: GoogleMap(
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
        mapType: MapType.normal,
        initialCameraPosition: _cameraPosition,
        markers: _marker,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
          Future.delayed(
            const Duration(milliseconds: 500),
            () {
              controller.showMarkerInfoWindow(_markerId);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _gotolocation,
        label: const Text("To your location"),
        icon: const Icon(Icons.directions_car),
      ),
    );
  }

  Future<void> _gotolocation() async {
    final GoogleMapController controller = await _controller.future;
    await controller
        .animateCamera(CameraUpdate.newCameraPosition(_cameraPosition));
  }
}
