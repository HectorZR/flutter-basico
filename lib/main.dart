import 'package:flutter/material.dart';
import 'description_place.dart';
import 'review_list.dart';
import 'gradient_back.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: true,
      title: 'Platzi Trips',
      theme: ThemeData(),
      home: Scaffold(
          body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              new DescriptionPlace("Bahamas", 4,
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."),
              new ReviewList(),
            ],
          ),
          GradientBack('Popular')
        ],
      )),
    );
  }
}
