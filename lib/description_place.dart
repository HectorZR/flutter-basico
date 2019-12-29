import 'package:flutter/material.dart';
import 'button_purple.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final star_half = Container(
      margin: EdgeInsets.only(top: 340.0, right: 3.0),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final star_border = Container(
      margin: EdgeInsets.only(top: 220.0, right: 3.0),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(top: 340.0, right: 3.0),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final description = Container(
      margin: new EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      child: new Text(
        this.descriptionPlace,
        style: const TextStyle(
            fontSize: 16.0,
            fontFamily: "Lato",
            fontWeight: FontWeight.bold,
            color: Color(0xFF56575a)),
      ),
    );

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 340.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            this.namePlace,
            style: TextStyle(
                fontSize: 30.0,
                fontFamily: "Lato",
                fontWeight: FontWeight.w900),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            star_half,
          ],
        ),
      ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[title_stars, description, ButtonPurple("Navigate")],
    );
  }
}
