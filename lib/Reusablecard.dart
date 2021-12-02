import 'package:flutter/material.dart';

class Reusablecard extends StatelessWidget {
  Reusablecard ({@required this.colour, this.cardcontent, this.onPress, this.cardstyle});
  final Color colour;
  final Widget cardcontent;
  final Function onPress;
  final double cardstyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardcontent,
        height: 200,
        width: 150,
        margin: EdgeInsets.all(10),
        decoration:
        BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(20),
          boxShadow: [BoxShadow(
          color: Colors.black,
          offset: Offset(
            cardstyle,
            cardstyle,
          ),
           //blurRadius: cardstyle,
           //spreadRadius: 2.0,
        ),
        ],
        ),
      ),
    );
  }
}