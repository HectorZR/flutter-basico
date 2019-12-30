import 'package:flutter/material.dart';

class ButtonGrey extends StatelessWidget {
  Icon buttonIcon = Icon(Icons.add);
  double iconSize = 25.0;

  ButtonGrey(this.buttonIcon, this.iconSize);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white,
      ),
      margin: EdgeInsets.only(top: 200.0, left: 5.0, right: 5.0),
      child: IconButton(
        icon: this.buttonIcon,
        iconSize: this.iconSize,
        // padding: EdgeInsets.only(top: 200.0),
        color: Colors.grey,
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
