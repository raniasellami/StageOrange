import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Destination extends StatefulWidget {
  Destination() : super();

  @override
  State<Destination> createState() => _DestinationState();
}

class _DestinationState extends State<Destination> {
  Completer<GoogleMapController> _controller = Completer();
  final Map<String, Marker> _markers = {};

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(
      37.42796133580664,
      -122.085749655962,
    ),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kGooglePlex,
        mapToolbarEnabled: false,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: _markers.values.toSet(),
        onTap: (position) => {
          setState(
            () {
              _markers.clear();
              final marker = Marker(
                markerId: MarkerId("1"),
                position: LatLng(position.latitude, position.longitude),
                infoWindow: InfoWindow(title: "Title"),
              );
              _markers["location"] = marker;
            },
          )
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: Text(
          'To the lake!',
        ),
        icon: Icon(
          Icons.directions_boat,
        ),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
