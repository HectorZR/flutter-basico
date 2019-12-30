import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  _FloatingActionButtonGreen createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  bool isFavorite = false;

  void onPressedFav() {
    setState(() {
      final contextScaffold = Scaffold.of(context);
      contextScaffold.removeCurrentSnackBar();
      contextScaffold.showSnackBar(SnackBar(
        content: Text((!this.isFavorite ? "Agregaste a" : "Eliminaste de") +
            " tus favoritos"),
      ));
      this.isFavorite = !this.isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(this.isFavorite ? Icons.favorite : Icons.favorite_border),
    );
  }
}
