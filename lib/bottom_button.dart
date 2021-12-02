import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {

  BottomButton({@required this.onTap,@required this.title});

  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap:onTap,
      // () {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //         builder: (context) =>ResultsPage()
      //     ),
      //   );
      // },

        child: Container(

          child: Center(
            child: Text(
              title,
              style:kCalculate_modification,
            ),
          ),
          // color: kBottomcontainercolor,
          padding: EdgeInsets.only(bottom: 20.0),
          width: double.infinity,
          height: kBottomcontainerheight,
          margin: EdgeInsets.only(top: 10.0),
          decoration: BoxDecoration(
            color: kBottomcontainercolor,
            borderRadius: BorderRadius.circular(15),
          ),
        ),

    );
  }
}