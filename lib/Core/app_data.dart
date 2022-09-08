import 'package:flutter/material.dart';
import 'package:stageorange/Src/model/CardAddTrip.dart';
import 'package:stageorange/Src/model/bottom_navigation_item.dart';
import 'package:stageorange/Src/model/list_card.dart';

class AppData {
  AppData._();

  static const dummyText =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";

  static List<ListCard> listCards = [
    ListCard(const Icon(Icons.account_box_sharp), 'Add your passport'),
    ListCard(const Icon(Icons.wrong_location_outlined), 'Add destination'),
    ListCard(const Icon(Icons.add_business_rounded), 'Add your hostiong'),
    ListCard(const Icon(Icons.account_box_sharp), 'Add your cost'),
  ];

  static List<BottomNavigationItem> bottomNavigationItems = [
    BottomNavigationItem(const Icon(Icons.home), 'Home'),
    BottomNavigationItem(const Icon(Icons.bookmark), 'Add trip'),
    BottomNavigationItem(const Icon(Icons.person), 'All Trips')
  ];
  static List<CardAddTrip> CardAddTrips = [
    CardAddTrip(const Icon(Icons.account_box_sharp), 'Add your passport'),
    CardAddTrip(const Icon(Icons.wrong_location_outlined), 'Add destination'),
    CardAddTrip(const Icon(Icons.add_business_rounded), 'Add your hostiong'),
    CardAddTrip(const Icon(Icons.account_box_sharp), 'Add your cost'),
  ];
}
