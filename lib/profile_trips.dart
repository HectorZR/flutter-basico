import 'package:flutter/material.dart';
import 'profile_view/header_profile.dart';
import 'gradient_back.dart';
import 'profile_view/profile_posts_list.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            GradientBack(
              title: "Perfil",
              height: 400.0,
            ),
            HeaderProfile(),
            ProfilePostsList()
          ],
        ),
      ],
    );
  }
}
