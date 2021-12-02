import 'package:bmi_calculator/Reusablecard.dart';
import 'package:bmi_calculator/bottom_button.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.final_bmi,@required this.final_conclusion,@required this.final_result});

  final String final_result;
  final String final_bmi;
  final String final_conclusion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        backgroundColor: Color(0xffffffff),
        foregroundColor: Color(0xFF153d4b),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text(
                'Your Results',
                textAlign: TextAlign.center,
                style: kYour_Result,
              ),
            ),
          ),
          Expanded(
            flex: 5,
              child: Container(
                child: Reusablecard(
                  cardstyle: kReusablecardshadowstyle,
                  colour: kReusablecardcolor,
                  cardcontent: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        final_result.toUpperCase(),
                        style: kResult_style,
                      ),
                      Text(
                        final_bmi,
                        style: kNumber_result_style,
                      ),
                      Text(
                        final_conclusion,
                        style: kText_result_style,
                      ),


                    ],
                  ),
                ),

              ),
          ),
          BottomButton(onTap: (){
            Navigator.pop(context);
          },
              title: "RE-CALCULATE"),
        ],
      ),

    );
  }
}
