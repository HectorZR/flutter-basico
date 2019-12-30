import 'package:flutter/material.dart';
import '../floating_action_button_green.dart';

class ProfilePost extends StatelessWidget {
  String imagePath = '';
  String title;
  String description;
  String steps;

  ProfilePost(this.imagePath,
      {this.title = 'Title',
      this.description = 'Description 1',
      this.steps = 'Number of steps'});

  @override
  Widget build(BuildContext context) {
    final imageBack = Center(
      child: Container(
        margin: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 120.0),
        height: 275.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(this.imagePath),
          ),
        ),
      ),
    );

    final frontDescription = Container(
      padding: EdgeInsets.all(20.0),
      width: 275.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            this.title,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 22.0,
            ),
          ),
          Text(
            this.description,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 14.0,
            ),
          ),
          Text(
            this.steps,
            style: TextStyle(
              color: Colors.orange[400],
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    );

    return Stack(
      alignment: Alignment(0.0, 0.5),
      children: <Widget>[
        imageBack,
        Stack(
          alignment: Alignment(0.9, 1.4),
          children: <Widget>[
            frontDescription,
            FloatingActionButtonGreen(),
          ],
        )
      ],
    );
  }
}
