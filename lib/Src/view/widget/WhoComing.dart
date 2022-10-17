import 'package:flutter/material.dart';
import 'package:stageorange/Src/view/widget/Calender.dart';

class WhoComing extends StatelessWidget {
  const WhoComing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      child: TextField(
        decoration:
            InputDecoration(border: OutlineInputBorder(), hintText: 'Who'),
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
