import 'package:flutter/material.dart';

class ButtonGrey extends StatelessWidget {
  Icon buttonIcon = Icon(Icons.add);
  double iconSize;
  bool strong;

  ButtonGrey(this.buttonIcon, {this.iconSize = 40.0, this.strong = false});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: this.strong ? Colors.white : Colors.grey,
      ),
      margin: EdgeInsets.only(top: 200.0, left: 10.0, right: 10.0),
      child: IconButton(
        icon: this.buttonIcon,
        iconSize: this.iconSize,
        color: Color(0xFF584CD1),
        onPressed: () {
          Scaffold.of(context).removeCurrentSnackBar();
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text("Snackbar"),
          ));
        },
      ),
    );
  }
}
