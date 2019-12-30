import 'package:flutter/material.dart';

class UserDetails extends StatelessWidget {
  String name = "Usuario";
  String mail = "mail@test.com";

  UserDetails(this.name, this.mail);

  @override
  Widget build(BuildContext context) {
    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        this.name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 23.0,
          fontFamily: "Lato",
          color: Colors.white,
        ),
      ),
    );

    final userMail = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        this.mail,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 17.0,
          fontFamily: "Lato",
          color: Color(0xFFa3a5a7),
          fontWeight: FontWeight.w900,
        ),
      ),
    );

    return Flexible(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userMail,
      ],
    ));
  }
}
