import 'package:flutter/material.dart';
import 'package:stageorange/Core/app_data.dart';

class CardAddTripe extends StatefulWidget {
  int index;

  CardAddTripe({Key? key, this.index = 0}) : super(key: key);

  @override
  State<CardAddTripe> createState() => _CardAddTripeState();
}

class _CardAddTripeState extends State<CardAddTripe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white70, width: 1),
          borderRadius: BorderRadius.circular(2),
        ),
        color: Colors.red,
        child: Center(
          child: AppData.CardAddTrips[widget.index].icon,
        ),
      ),
    );
  }
}
