import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'results_page.dart';




enum Gender {male,   female, }




class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor = kInactiveCardColor;
  Color femaleCardColor = kInactiveCardColor;
  int height = 180;
  int weight = 60;
  int age = 22;

  void updateColor (Gender  colorForGender) {
     colorForGender == Gender.male? maleCardColor = kActiveCardColor : maleCardColor = kInactiveCardColor;
     colorForGender == Gender.female? femaleCardColor = kActiveCardColor : femaleCardColor = kInactiveCardColor;
  }

  void updateAge() {

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          updateColor(Gender.male);
                        });
                      },
                      cardColor: maleCardColor,
                    cardChild: BMICard( Icon(
                        FontAwesomeIcons.mars,
                        size: 75.0,
                       ), 'Male'),
                    ),

                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          updateColor(Gender.female);
                        });

                      },
                      cardColor: femaleCardColor,
                      cardChild:BMICard(
                      Icon(
                        FontAwesomeIcons.venus,
                        size: 75.0,
                      ), 'Female'


                    ),

                    ),

                  ),

              ]),
            ),
            Expanded(

              child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ReusableCard(
                        cardColor: kActiveCardColor,
                        cardChild: Column (
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('HEIGHT', style: kLabelTextStyle,),
                            Row (
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: <Widget>[
                                Text(
                                  height.toString(),
                                  style: kNumberTextStyle,

                                ),
                                Text ('cm', style: kLabelTextStyle,),

                              ],
                            ),
                            SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                thumbShape: RoundSliderThumbShape( enabledThumbRadius: 15.0),
                                thumbColor: Color(0xFFEB1555),
                                overlayColor: Color(0x29EB1555),
                                activeTrackColor: Colors.white,
                                inactiveTrackColor: Color(0XFF8DE98),
                                overlayShape: RoundSliderOverlayShape(overlayRadius:  30.0),

                              ),
                              child: Slider(
                                value: height.toDouble(),
                                min: 120.0,
                                max: 220.0,
                                onChanged: ( double newValue) {
                                   setState(() {
                                     //height = newValue;
                                     //height = 50;
                                     print(newValue);
                                     height = newValue.round();
                                   });
                                  },
                              ),
                            ),
                          ],
                        ) ,

                      ),

                    ),

                  ]),
            ),
            Expanded(
              child: Row(
                  children: <Widget>[
                    Expanded(
                      child:ReusableCard
                      (
                        cardColor: kActiveCardColor,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Weight', style: kLabelTextStyle,),
                            Text(weight.toString(), style: kNumberTextStyle,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RoundIconButton(buttonIcon: FontAwesomeIcons.plus,
                                onPressCalculation: () {

                                  setState(() {
                                    weight++;
                                  });

                                }),
                                SizedBox(
                                  width: 5.0,
                                ),
                                RoundIconButton(
                                  buttonIcon: FontAwesomeIcons.minus,
                                  onPressCalculation:  () {

                                    setState(() {
                                      weight--;
                                    });

                                  },

                                ),

                              ],
                            )

                          ],
                        ),

                      ),

                    ),
                    Expanded(
                      child: ReusableCard(
                        cardColor:  kActiveCardColor,

                          cardChild: Column (
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: <Widget>[
                            Text('Age', style: kLabelTextStyle,),
                            Text(age.toString(), style: kNumberTextStyle,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  RoundIconButton(buttonIcon: FontAwesomeIcons.plus, onPressCalculation: () {

                                    setState(() {
                                       age++;
                                    });

                                  },),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  RoundIconButton(buttonIcon: FontAwesomeIcons.minus, onPressCalculation: () {
                                    setState(() {
                                      age--;
                                    });

                                    },),

                                ],
                              )
                          ],

                        )


                      ),
                    ),

                  ]),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:  (context) => ResultsPage()));
              },
              child: Container(

                child: Center(
                  child: Text('Calculate ',
                  style: kLargeButtonTextStyle,),
                ),
                color: kBottomContainerColor,
                margin: EdgeInsets.only(top: 10.0),
                padding: EdgeInsets.only(bottom: 10.0),
                width: double.infinity,
                height: kBottomContainerHeight,


              ),
            ),

          ],

        ),
      ),
    );
  }
}

class  RoundIconButton extends StatelessWidget {
  final IconData buttonIcon;
  final Function onPressCalculation;

  RoundIconButton ({this.buttonIcon, this.onPressCalculation});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(buttonIcon),
      onPressed: onPressCalculation,
      elevation: 6.0,
      disabledElevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape:  CircleBorder(),
      fillColor: Color(0xFF4C4F5E),

    );
  }
}
