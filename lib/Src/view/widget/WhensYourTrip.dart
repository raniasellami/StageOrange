import 'package:flutter/material.dart';
import 'package:stageorange/Src/view/widget/Calender.dart';

class WhensYourTrip extends StatelessWidget {
  const WhensYourTrip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'When',
        ),
        onTap: () {
          showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return Calender();
              });
        },
      ),
    );
  }
}
