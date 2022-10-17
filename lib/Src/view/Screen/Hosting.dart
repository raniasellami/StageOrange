import 'package:flutter/material.dart';
import 'package:stageorange/Src/view/widget/ConfirmationHosting.dart';
import 'package:stageorange/Src/view/widget/MapForAcommodation.dart';
import 'package:stageorange/Src/view/widget/RechercheAccommodation.dart';
import 'package:stageorange/service/GeoLocationService.dart';

class Hosting extends StatefulWidget {
  const Hosting({Key? key}) : super(key: key);

  @override
  State<Hosting> createState() => _HostingState();
}

class _HostingState extends State<Hosting> {
  var place = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MapForAccommodation(onLocationReady: (position) {
            GeoLocationService()
                .getLocation(
                    lat: position.latitude.toString(),
                    lng: position.longitude.toString())
                .then(
                  (value) => setState(
                    () {
                      place = value.address.city;
                      print("OUT $place");
                    },
                  ),
                );
          }),
          RechercherAccommodation(placeName: place)
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => ConfirmationHosting()),
          );
        },
        label: const Text('Confirmed'),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
