import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';
import 'reusable_card.dart';
const bottomContainerHeight = 80.0;
const activeCardColor =  Color( 0xFF1D1E33);
const inactiveCardColor    =  Color(0XF111328);
const bottomContainerColor = Color(0xFFEB1555);




class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateColor (int colorForGender) {
      if (colorForGender == 1 ){
        if(maleCardColor == inactiveCardColor) {
          maleCardColor = activeCardColor;
          femaleCardColor = inactiveCardColor;
        }else {
          maleCardColor = inactiveCardColor;
        }
      }else if (colorForGender == 2 ){
        if(femaleCardColor == inactiveCardColor) {
          femaleCardColor = activeCardColor;
          maleCardColor  = inactiveCardColor;
        }else
          femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
        femaleCardColor = inactiveCardColor;
      }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                      print('male Card was pressed');
                    },
                    child: ReusableCard(
                      cardColor: maleCardColor,
                    cardChild: BMICard( Icon(
                        FontAwesomeIcons.mars,
                        size: 75.0,
                       ), 'Male'),
                    ),
                  ),

                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: ReusableCard(
                      cardColor: femaleCardColor,
                      cardChild:BMICard(
                      Icon(
                        FontAwesomeIcons.venus,
                        size: 75.0,
                      ), 'Female'


                    ),

                    ),
                  ),

                ),

            ]),
          ),
          Expanded(

            child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(cardColor: activeCardColor),
                  ),

                ]),
          ),
          Expanded(
            child: Row(
                children: <Widget>[
                  Expanded(
                    child:ReusableCard(cardColor: activeCardColor),
                  ),
                  Expanded(
                    child: ReusableCard( cardColor:  activeCardColor),
                  ),

                ]),
          ),

          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,

          ),

        ],

      ),
    );
  }
}
