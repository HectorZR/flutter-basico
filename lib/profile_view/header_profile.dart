import 'package:flutter/material.dart';
import '../gradient_back.dart';
import '../utils/photo.dart';
import '../utils/user_details.dart';
import '../utils/button_grey.dart';

class HeaderProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // GradientBack(
        //   title: "Perfil",
        //   height: 400.0,
        // ),
        Container(
          margin: EdgeInsets.only(top: 100.0),
          child: Row(
            children: <Widget>[
              Photo("assets/img/people.jpg"),
              UserDetails("Hector Zurga", "mail@test.com")
            ],
          ),
        ),
        Container(
          // margin: EdgeInsets.only(top: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonGrey(Icon(Icons.bookmark_border),
                  iconSize: 35.0, strong: true),
              ButtonGrey(Icon(Icons.card_giftcard), iconSize: 35.0),
              ButtonGrey(Icon(Icons.add), iconSize: 50.0, strong: true),
              ButtonGrey(Icon(Icons.email), iconSize: 35.0),
              ButtonGrey(Icon(Icons.person_outline), iconSize: 35.0),
            ],
          ),
        ),
      ],
    );
  }
}
