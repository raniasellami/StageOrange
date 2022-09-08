import 'package:stageorange/Src/model/place.dart';

class Trip {
  String title;
  String description;
  String hosting;
  String transport;
  List<Place> places;
  Trip({
    required this.title,
    required this.description,
    required this.hosting,
    required this.transport,
    required this.places,
  });
}
