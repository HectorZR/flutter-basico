import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'platzi_trips.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent,
      statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Platzi Trips',
      theme: ThemeData(),
      home: PlatziTrips(),
    );
  }
}
