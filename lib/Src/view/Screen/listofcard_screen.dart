import 'package:flutter/material.dart';
import 'package:stageorange/Src/view/widget/listofcard.dart';

class ListOfCardScreen extends StatelessWidget {
  const ListOfCardScreen() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Plan your trip'),
          centerTitle: true,
          backgroundColor: Colors.white12,
          elevation: 8.00,
        ),
        body: ListOfCard());
  }
}
