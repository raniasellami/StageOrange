import 'package:flutter/material.dart';
import 'package:stageorange/Src/view/widget/RechercheAccommodation.dart';
import 'package:stageorange/Src/view/widget/WhensYourTrip.dart';
import 'package:stageorange/Src/view/widget/WhoComing.dart';

class HostingWhereWhen extends StatelessWidget {
  const HostingWhereWhen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            RechercherAccommodation(
              placeName: '',
            ),
            SizedBox(
              height: 20,
            ),
            WhensYourTrip(),
            SizedBox(
              height: 20,
            ),
            WhoComing(),
          ],
        ),
      ),
    );
  }
}
