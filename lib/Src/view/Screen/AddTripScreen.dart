import 'package:flutter/material.dart';
import 'package:stageorange/Core/app_data.dart';
import 'package:stageorange/Src/view/widget/CardAddTripe.dart';

class AddTrip extends StatelessWidget {
  const AddTrip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("")),
      body: Row(
        children: [
          for (var i = 0; i <= AppData.CardAddTrips.length - 1; i++) ...{
            CardAddTripe(
              index: i,
            ),
          }
        ],
      ),
    );
  }
}
