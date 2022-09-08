import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Src/view/Screen/listofcard_screen.dart';
import 'Src/view/Screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/splash_screen",
      routes: {
        "/splash_screen": (BuildContext context) {
          return splash_screen();
        },
        "/listofcard": (BuildContext context) {
          return ListOfCardScreen();
        }
      },
    );
  }
}
