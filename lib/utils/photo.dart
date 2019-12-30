import 'package:flutter/material.dart';

class Photo extends StatelessWidget {
  String imgPath = '';

  Photo(this.imgPath);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 3.0,
          color: Colors.white,
        ),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(this.imgPath),
        ),
      ),
    );
  }
}
