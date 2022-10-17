import 'package:flutter/material.dart';
import 'package:stageorange/Src/view/widget/Destination.dart';

import '../widget/TripDetailButtomSheet.dart';

class adddestination extends StatelessWidget {
  const adddestination({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Destination(),
                TripDetailButtomSheet(),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: SizedBox(
                    width: 60,
                    height: 60,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        onPrimary: Colors.white,
                        elevation: 20, // Elevation
                        shadowColor: Colors.white, // Shadow Color
                      ),
                      label: const Text(''),
                      icon: const Icon(Icons.arrow_back),
                    ),
                  ),
                ),
              ],
            )));
  }
}
