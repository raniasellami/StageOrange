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
          backgroundColor: Colors.pinkAccent,
          elevation: 8.00,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
              height: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListOfCard(),
              )),
        ));
  }
}
