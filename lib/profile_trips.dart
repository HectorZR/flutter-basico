import 'package:flutter/material.dart';
import 'profile_view/header_profile.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.indigo,
      child: ListView(
        children: <Widget>[
          HeaderProfile(),
        ],
      ),
    );
  }
}
