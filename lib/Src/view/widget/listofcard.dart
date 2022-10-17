import 'package:flutter/material.dart';
import 'package:stageorange/Core/app_data.dart';
import 'package:stageorange/Src/view/Screen/Hosting.dart';
import 'package:stageorange/Src/view/Screen/HostingWhereWhen.dart';
import 'package:stageorange/Src/view/Screen/adddestination.dart';
import 'package:stageorange/Src/view/Screen/addpassport_screen.dart';

class ListOfCard extends StatelessWidget {
  ListOfCard() : super();

  final List<Widget> _screens = [
    addpassport(),
    adddestination(),
    HostingWhereWhen(),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        crossAxisSpacing: 10,
        mainAxisSpacing: 20,
      ),
      itemCount: AppData.listCards.length,
      itemBuilder: (BuildContext ctx, index) {
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: GestureDetector(
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => _screens[index]))
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35.0),
                color: Colors.white54,
                border: Border.all(
                  color: Colors.green,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    AppData.listCards[index].icon,
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        AppData.listCards[index].label,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
