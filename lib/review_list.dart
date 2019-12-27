import 'package:flutter/material.dart';
import 'package:platzi_trips_app/review.dart';

class ReviewList extends StatelessWidget {
  String name = "Veruna Yasas";
  String details = "1 review 5 photos";
  String comment = "There is an amazing place in Sri Lanka";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/ann.jpg", name, details, comment),
        Review("assets/img/people.jpg", 'Hector Zurga', details,
            'Mi review de Flutter'),
        Review("assets/img/girl.jpg", name, details, comment),
      ],
    );
  }
}
