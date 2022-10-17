import 'package:flutter/material.dart';
import 'package:stageorange/Src/view/Screen/listofcard_screen.dart';
import 'package:stageorange/Src/view/Screen/settings.dart';
import 'package:stageorange/Src/view/widget/ListTrip.dart';
import 'package:stageorange/mock/listofMockData.dart';

class LastTrip extends StatelessWidget {
  const LastTrip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => settings()),
                    );
                  },
                  child: Icon(
                    Icons.settings,
                    size: 26.0,
                  ),
                )),
          ],
          backgroundColor: Colors.lightGreen,
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: const Text('My Trips'),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => ListOfCardScreen()),
            );
          },
          label: const Text('Add Trip'),
          icon: const Icon(Icons.add),
          backgroundColor: Colors.pink,
        ),
        body: ListTrip(listTrip: ListData().dataList));
  }
}
