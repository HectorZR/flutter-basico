import 'package:flutter/material.dart';
import '../gradient_back.dart';
import '../utils/photo.dart';
import '../utils/user_details.dart';
import '../utils/button_grey.dart';

class HeaderProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBack(
          title: "Perfil",
          height: 400.0,
        ),
        Container(
          padding: EdgeInsets.only(top: 100.0),
          child: Row(
            children: <Widget>[
              Photo("assets/img/ann.jpg"),
              UserDetails("Hector Zurga", "mail@test.com")
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonGrey(Icon(Icons.bookmark_border), 40.0),
              ButtonGrey(Icon(Icons.card_giftcard), 40.0),
              ButtonGrey(Icon(Icons.add), 50.0),
              ButtonGrey(Icon(Icons.email), 40.0),
              ButtonGrey(Icon(Icons.person_outline), 40.0),
            ],
          ),
        )
      ],
    );
  }
}
