import 'package:flutter/material.dart';
import 'constants.dart';

class cardcontentshortcut extends StatelessWidget {
  cardcontentshortcut({@required this.icn, @required this.txt});
  final IconData icn;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icn,
          size: 50,
          color: Color(0xff153d4b),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          txt,
          style:
          kText_style,
        ),
      ],
    );
  }
}
