import 'package:flutter/material.dart';
import 'package:stageorange/Src/view/widget/LetterIndicator.dart';
import 'package:stageorange/mock/MockData.dart';

class CardTrip extends StatelessWidget {
  CardTrip({
    Key? key,
    required this.tripInformation,
  }) : super(key: key);
  MockData tripInformation;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: LetterIndicator(
              letter: tripInformation.Destination.substring(0, 1),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                ),
                child: Text(
                  tripInformation.Destination,
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: Colors.black),
                ),
              ),
              Row(
                children: [
                  Text("from "),
                  Text(
                    tripInformation.Dateofdeparature,
                    style: Theme.of(context).textTheme.caption,
                  ),
                  Text(" to "),
                  Text(
                    tripInformation.Returndate,
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
