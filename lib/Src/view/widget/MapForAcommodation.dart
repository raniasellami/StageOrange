import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapForAccommodation extends StatefulWidget {
  var onLocationReady;

  MapForAccommodation({required this.onLocationReady(LatLng position)});

  @override
  State<MapForAccommodation> createState() =>
      _MapForAccommodationState(onLocationReady: onLocationReady);
}

class _MapForAccommodationState extends State<MapForAccommodation> {
  Completer<GoogleMapController> _controller = Completer();
  late var onLocationReady;

  _MapForAccommodationState({required this.onLocationReady(LatLng position)});

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
    zoom: 19.151926040649414,
  );
  final Dio _dio = Dio();
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: _kGooglePlex,
      mapToolbarEnabled: false,
      onMapCreated: (GoogleMapController controller) {
        _setStyle(controller);
        _controller.complete(controller);
      },
      markers: _markers.values.toSet(),
      onTap: (position) {
        onLocationReady(position);
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
        );
      },
    );
  }

  void _setStyle(GoogleMapController controller) async {
    String value = await DefaultAssetBundle.of(context)
        .loadString('assets/map_style.json');
    controller.setMapStyle(value);
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
