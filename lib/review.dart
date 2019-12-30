import 'package:flutter/material.dart';
import 'utils/photo.dart';

class Review extends StatelessWidget {
  String imgPath = "assets/img/people.jpg";
  String name = "Veruna Yasas";
  String details = "1 review 5 photos";
  String comment = "There is an amazing place in Sri Lanka";

  Review(this.imgPath, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final star = Container(
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
        size: 13.0,
      ),
    );

    final userComment = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 13.0,
            fontFamily: "Lato",
            color: Color(0xFFa3a5a7),
            fontWeight: FontWeight.w900),
      ),
    );

    final userInfo = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            left: 20.0,
          ),
          child: Text(
            details,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 13.0,
              fontFamily: "Lato",
              color: Color(0xFFa3a5a7),
            ),
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            star,
          ],
        )
      ],
    );

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 17.0,
          fontFamily: "Lato",
        ),
      ),
    );

    final userDetails = Flexible(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment,
      ],
    ));

    return Row(
      children: <Widget>[
        Photo(this.imgPath),
        userDetails,
      ],
    );
  }
}
