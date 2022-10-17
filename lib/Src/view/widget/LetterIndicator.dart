import 'dart:math';

import 'package:flutter/material.dart';
import 'package:stageorange/mock/Color.dart';

class LetterIndicator extends StatelessWidget {
  LetterIndicator({Key? key, required this.letter}) : super(key: key);

  String letter;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: PalletColors().colors[Random().nextInt(8)],
      child: Container(
        height: 80,
        width: 80,
        alignment: Alignment.center,
        child: Text(
          letter,
          style: TextStyle(
            fontSize: 62,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
