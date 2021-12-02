import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Reusablecard.dart';
import 'cardcontentshortcut.dart';
import 'constants.dart';
import 'bottom_button.dart';
import 'round_icon_button.dart';
import 'Calculator_Brain.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedcolor;
  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        backgroundColor: Color(0xffffffff),
        foregroundColor: Color(0xFF153d4b),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reusablecard(
                    onPress: () {
                      setState(() {
                        selectedcolor = Gender.male;
                      });
                    },
                    cardcontent: cardcontentshortcut(
                      icn: FontAwesomeIcons.mars,
                      txt: "MALE",
                    ),
                    colour: selectedcolor == Gender.male
                        ? kActivereusablecardcolor
                        : kInactivereusablecardcolor,
                    cardstyle: selectedcolor == Gender.male
                        ? kActivereusablecardshadowstyle
                        :kReusablecardshadowstyle,
                  ),
                ),
                Expanded(
                  child: Reusablecard(
                    onPress: () {
                      setState(() {
                        selectedcolor = Gender.female;
                      });
                    },
                    cardcontent: cardcontentshortcut(
                      icn: FontAwesomeIcons.venus,
                      txt: "FEMALE",
                    ),
                    colour: selectedcolor == Gender.female
                        ? kActivereusablecardcolor
                        : kInactivereusablecardcolor,
                    cardstyle: selectedcolor == Gender.female
                        ? kActivereusablecardshadowstyle
                        :kReusablecardshadowstyle,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Reusablecard(
              colour: kReusablecardcolor,
              cardstyle: kReusablecardshadowstyle,
              cardcontent: Column(
                children: <Widget>[
                  Text("HEIGHT", style: kText_style),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kCard_2_textstyle,
                      ),
                      Text(
                        "cm",
                        style: kText_style,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Color(0xfff0ad1b),
                      inactiveTrackColor: Color(0xFF8D8E98),
                      thumbColor: Color(0xFF153d4b),
                      overlayColor: Color(0x99f0ab13),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                        ;
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reusablecard(
                    cardstyle: kReusablecardshadowstyle,
                    colour: kReusablecardcolor,
                    cardcontent: Column(
                      children: <Widget>[
                        Text(
                          "WEIGHT",
                          style: kText_style,
                        ),
                        Text(
                          weight.toString(),
                          style: kCard_2_textstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Reusablecard(
                    cardstyle: kReusablecardshadowstyle,
                    cardcontent: Column(
                      children: <Widget>[
                        Text(
                          "AGE",
                          style: kText_style,
                        ),
                        Text(
                          age.toString(),
                          style: kCard_2_textstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                }),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                }),
                          ],
                        )
                      ],
                    ),
                    colour: kReusablecardcolor,
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            title: "CALCULATE",
            onTap: () {
              CalculatorBrain calc=new CalculatorBrain(height: height, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ResultsPage(
                      final_bmi: calc.bmi_calculator(),
                      final_conclusion: calc.getConclusion(),
                      final_result: calc.getResult(),
                    );
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

