import 'package:flutter/material.dart';
import 'package:stageorange/Src/view/widget/CardTrip.dart';
import 'package:stageorange/mock/MockData.dart';

class ListTrip extends StatelessWidget {
  ListTrip({Key? key, required this.listTrip}) : super(key: key);
  List<MockData> listTrip;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listTrip.length,
      itemBuilder: (BuildContext context, int index) {
        return CardTrip(
          tripInformation: listTrip[index],
        );
      },
    );
  }
}
