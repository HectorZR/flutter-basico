import 'package:flutter/material.dart';
import 'profile_post.dart';

class ProfilePostsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 325.0),
      child: Column(
        // padding: EdgeInsets.only(top: 350.0),
        children: <Widget>[
          ProfilePost(
            "assets/img/river.jpeg",
            title: 'Knuckles Mountains Range',
            description:
                'Hiking. Water fall hunting. Natural bath, Scenery & Photography',
            steps: 'Steps 123,123,123',
          ),
          ProfilePost("assets/img/river.jpeg"),
          ProfilePost("assets/img/river.jpeg"),
        ],
      ),
    );
  }
}
