import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Screen/Hosting.dart';

class RechercherAccommodation extends StatelessWidget {
  String placeName;

  RechercherAccommodation({
    required this.placeName,
  });

  @override
  Widget build(BuildContext context) {
    print("IN $placeName");
    return SafeArea(
      child: Material(
        elevation: 8,
        child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => Hosting()),
              );
            }),
      ),
    );
  }
}

/*


  GeoLocationService service = GeoLocationService();
    ;
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder<LocationResponse>(
          future:
          service.getLocation(lat: 10.23.toString(), lng: 10.33.toString()),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data!.displayName);
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );


 */
