import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'description_place.dart';
import 'review_list.dart';
import 'header_appbar.dart';

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
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                DescriptionPlace("Bahamas", 4,
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."),
                ReviewList(),
              ],
            ),
            HeaderAppBar(),
          ],
        ),
      ),
    );
  }
}
